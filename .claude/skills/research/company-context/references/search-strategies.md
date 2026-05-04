# Search strategies and estimation heuristics

## Search query templates

### Funding
```
"[company]" funding round
"[company]" raises series
"[company]" crunchbase
"[company]" investment announcement
"[company]" valuation
```

### Revenue and traction
```
"[company]" ARR revenue
"[company]" customers users
"[company]" growth metrics
"[company]" annual revenue
site:techcrunch.com "[company]"
```

### Team size
```
"[company]" site:linkedin.com/company
"[company]" employees team size
"[company]" headcount hiring
```

### Red flags
```
"[company]" layoffs
"[company]" pivot
"[company]" executive departure
"[company]" restructuring
```

### ICP signals
```
"[company]" site:linkedin.com/jobs PMM OR "product marketing" OR content
"[company]" head of marketing OR VP marketing
site:linkedin.com "[founder name]" posts
```

## Data source categories

**Funding databases**: Crunchbase, Tracxn, PitchBook, CB Insights, Dealroom, Mattermark

**Revenue estimators**: GetLatka, Growjo, LeadIQ, Owler, ZoomInfo, Apollo

**News sources**: TechCrunch, Forbes, VentureBeat, The Information, Axios, Business Insider

**Review sites**: G2, Capterra, TrustRadius, Product Hunt

**Job boards**: LinkedIn Jobs, Greenhouse, Lever, Ashby, Wellfound

**Tech stack**: BuiltWith, Wappalyzer, SimilarTech

## Revenue estimation from team size

| Team size | Typical ARR range | Stage |
|-----------|-------------------|-------|
| 1-10 | $0-500K | Pre-seed/Seed |
| 11-25 | $500K-2M | Seed/Series A |
| 26-50 | $2M-5M | Series A |
| 51-100 | $5M-15M | Series A/B |
| 101-250 | $15M-50M | Series B/C |
| 251-500 | $50M-100M | Late stage |

Efficient B2B SaaS: $150K-300K ARR per employee.

## Funding to revenue correlation

| Stage | Total raised | Expected ARR | Team size |
|-------|--------------|--------------|-----------|
| Pre-seed | $500K-1.5M | $0-200K | 2-5 |
| Seed | $2M-5M | $200K-1M | 5-15 |
| Series A | $8M-20M | $1M-5M | 15-50 |
| Series B | $20M-50M | $5M-20M | 50-150 |
| Series C | $50M-100M | $20M-50M | 150-400 |

## Customer count signals

- **Logo walls**: Count visible logos × 2-3 for rough total
- **G2 reviews**: Multiply by 10-20x for customer count
- **"Trusted by X"**: Usually accurate, take at face value

## Common company patterns

**Well-funded Series A+**: Funding public, team on LinkedIn, customer count on website

**Bootstrapped**: Revenue rarely public, estimate from team size and pricing

**Enterprise-focused**: Lower customer count, higher ACV, look for "trusted by" statements

**PLG companies**: May have public user metrics, distinguish users vs paying customers
