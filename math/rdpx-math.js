let lp_liquidity = 20000;
let lp_rdpx_reserves = 100;
let lp_usdt_reserves = 10000;
let rdpx_price = lp_usdt_reserves / lp_rdpx_reserves;
let rdpx_supply = 2250000;
let reserves_rdpx = 10 ** 6;
let dpxusd_supply = 0;
let rdpxV2Core_rdpx = 0;
let reserves_usd = 0;
let reserves_lp = 0;
let relp_factor = 0.01;

// t1 = $1 - $10k
// t2 = $10k - $100k
// t3 = $100k - $1m
// t4 = $1m - $10m
let bonders = [
  {
    percent: [1, 25],
    amounts: [1000, 10000],
    bonded: 0,
  },
  {
    percent: [26, 65],
    amounts: [10000, 100000],
    bonded: 0,
  },
  {
    percent: [66, 97],
    amounts: [100000, 1000000],
    bonded: 0,
  },
  {
    percent: [98, 100],
    amounts: [1000000, 10000000],
    bonded: 0,
  },
];

let bond = (amount_lp) => {
  if (reserves_rdpx - amount_lp * 4 <= 0) amount_lp = reserves_rdpx / 4;
  // User adds liquidity to LP at current price
  lp_liquidity += amount_lp * 2 * rdpx_price;
  lp_usdt_reserves += amount_lp * rdpx_price;
  lp_rdpx_reserves += amount_lp;

  // User bonds rDPX
  base_relp_percent = Math.sqrt(reserves_rdpx) * relp_factor;
  reserves_rdpx -= amount_lp * 4;
  rdpx_supply -= amount_lp * 4;
  dpxusd_supply += amount_lp * 4 * rdpx_price;
  reserves_usd += amount_lp * 2 * rdpx_price;
  reserves_lp += amount_lp;

  // Re-LP
  console.log(
    "re-lp",
    (amount_lp / reserves_lp) * lp_rdpx_reserves * base_relp_percent
  );
  let relp_rdpx =
    ((amount_lp * 4) / rdpx_supply) * lp_rdpx_reserves * base_relp_percent;
  // (reserves_lp * base_relp_percent * rdpx_price) /
  // lp_rdpx_reserves;
  rdpxV2Core_rdpx += relp_rdpx;
  lp_rdpx_reserves -= relp_rdpx;

  rdpx_price = lp_usdt_reserves / lp_rdpx_reserves;
};

const randomTier = () => {
  const n = Math.floor(Math.random() * 100) + 1;
  for (let b of bonders) {
    if (n >= b.percent[0] && n <= b.percent[1]) {
      const amount = Math.floor(Math.random() * b.amounts[1]) + b.amounts[0];
      b.bonded += amount;
      return amount;
    }
  }
};

for (let i = 0; i < 1500; i++) {
  let amount_usd = randomTier();
  let amount_lp = amount_usd / (rdpx_price * 2);
  console.log("bonding", amount_lp);
  bond(amount_lp);
  // bond(1000);
  console.log({
    i,
    reserves_rdpx,
    dpxusd_supply,
    reserves_usd,
    lp_liquidity,
    lp_rdpx_reserves,
    lp_usdt_reserves,
    reserves_lp,
    rdpxV2Core_rdpx,
    rdpx_supply,
    rdpx_price,
    base_relp_percent,
  });
  if (reserves_rdpx <= 0) i = 1500;
}
console.log(bonders);
const rdpxV2Core_value =
  reserves_usd +
  lp_rdpx_reserves * rdpx_price +
  lp_usdt_reserves +
  rdpxV2Core_rdpx * rdpx_price;
const rdpxV2Core_pnl = rdpxV2Core_value - dpxusd_supply;
const usdt_backing = lp_usdt_reserves + reserves_usd;
const usdt_backing_percent = (usdt_backing / dpxusd_supply) * 100;
console.log({
  rdpx_price: rdpx_price.toLocaleString(),
  rdpxV2Core_value: rdpxV2Core_value.toLocaleString(),
  dpxusd_supply: dpxusd_supply.toLocaleString(),
  usdt_backing: usdt_backing.toLocaleString(),
  usdt_backing_percent: usdt_backing_percent + "%",
  rdpxV2Core_pnl: rdpxV2Core_pnl.toLocaleString(),
});
