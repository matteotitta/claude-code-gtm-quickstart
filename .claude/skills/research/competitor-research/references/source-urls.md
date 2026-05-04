# Common data source URLs

URL patterns for frequently used research sources. Use these to navigate directly to competitor profiles.

---

## Company data sources

### Crunchbase
- **Company profile**: `crunchbase.com/organization/[company-slug]`
- **Funding**: `crunchbase.com/organization/[company-slug]/company_financials`
- **People**: `crunchbase.com/organization/[company-slug]/people`
- **Access**: Free basic data; detailed financials require paid subscription
- **Reliability**: High for funding rounds; medium for team size

### Tracxn
- **Company profile**: `tracxn.com/d/companies/[company-slug]`
- **Search**: `tracxn.com/explore/[category]-Startups`
- **Access**: Limited free data; details require subscription
- **Reliability**: High for funding; includes competitor lists

### PitchBook
- **Company profile**: `pitchbook.com/profiles/company/[id]`
- **Access**: Mostly paywalled; snippets in search results useful
- **Reliability**: High but limited free access

### Sacra
- **Company profile**: `sacra.com/c/[company-slug]/`
- **Research reports**: `sacra.com/research/[report-slug]/`
- **Access**: Some free reports; subscription for full access
- **Reliability**: High for revenue estimates; well-researched

### CB Insights
- **Company profile**: `cbinsights.com/company/[company-slug]`
- **Financials**: `cbinsights.com/company/[company-slug]/financials`
- **Access**: Mostly paywalled
- **Reliability**: High but limited free data

### Contrary Research
- **Company profile**: `research.contrary.com/company/[company-slug]`
- **Access**: Free for many reports
- **Reliability**: High; detailed business breakdowns

---

## Review platforms

### G2
- **Product page**: `g2.com/products/[product-slug]/reviews`
- **Pricing**: `g2.com/products/[product-slug]/pricing`
- **Competitors**: `g2.com/products/[product-slug]/competitors`
- **Access**: Free
- **Reliability**: High; verified reviews

### Capterra
- **Product page**: `capterra.com/p/[id]/[product-name]/`
- **Reviews**: `capterra.com/p/[id]/[product-name]/reviews/`
- **Access**: Free
- **Reliability**: High; verified reviews

### TrustRadius
- **Product page**: `trustradius.com/products/[product-slug]/reviews`
- **Access**: Free
- **Reliability**: High; detailed reviews

### GetApp
- **Product page**: `getapp.com/reviews/[id]/[product-name]/`
- **Access**: Free
- **Reliability**: Medium-High

---

## Hiring data

### LinkedIn Jobs
- **Job search**: `linkedin.com/jobs/search/?keywords=[company]`
- **Company jobs**: `linkedin.com/company/[company-slug]/jobs/`
- **Access**: Free with login
- **Reliability**: High; real-time

### LinkedIn Company
- **Company page**: `linkedin.com/company/[company-slug]/`
- **About**: `linkedin.com/company/[company-slug]/about/`
- **Access**: Free basic; premium for full data
- **Reliability**: High for team size ranges

### Greenhouse
- **Careers page**: `boards.greenhouse.io/[company-slug]`
- **Access**: Free
- **Reliability**: High; real-time job listings

### Lever
- **Careers page**: `jobs.lever.co/[company-slug]`
- **Access**: Free
- **Reliability**: High; real-time job listings

### Glassdoor
- **Company page**: `glassdoor.com/Overview/[company-slug]`
- **Reviews**: `glassdoor.com/Reviews/[company-slug]-Reviews`
- **Access**: Requires account
- **Reliability**: Medium; employee perspectives

---

## Tech and SEO data (mostly premium)

### BuiltWith
- **Tech profile**: `builtwith.com/[domain]`
- **Access**: Limited free; full data requires subscription
- **Reliability**: High but mostly paywalled

### SimilarWeb
- **Site analysis**: `similarweb.com/website/[domain]/`
- **Access**: Limited free data; detailed requires subscription
- **Reliability**: Medium for traffic estimates

### SEMRush
- **Domain overview**: Requires subscription
- **Workaround**: Search `"[domain]" semrush` for cached/shared data
- **Reliability**: High but fully paywalled

### Ahrefs
- **Site explorer**: Requires subscription
- **Workaround**: Ahrefs provides some free tools at `ahrefs.com/backlink-checker`
- **Reliability**: High but mostly paywalled

---

## News and announcements

### Product Hunt
- **Search**: `producthunt.com/search?q=[company]`
- **Product page**: `producthunt.com/posts/[product-slug]`
- **Access**: Free
- **Reliability**: High for launch history

### TechCrunch
- **Search**: `techcrunch.com/search/[company]`
- **Access**: Free
- **Reliability**: High for funding news

### Crunchbase News
- **Search**: `news.crunchbase.com/search/[company]`
- **Access**: Free
- **Reliability**: High for funding news

---

## Social media

### Twitter/X
- **Company account**: `twitter.com/[handle]`
- **Search**: `twitter.com/search?q=[company]`
- **Access**: Free (with limits)
- **Reliability**: Low-Medium; verify claims

### LinkedIn Posts
- **Search**: `linkedin.com/search/results/content/?keywords=[company]`
- **Access**: Free with login
- **Reliability**: Medium; official company posts are reliable

### Reddit
- **Search**: `reddit.com/search/?q=[company]`
- **Subreddit**: `reddit.com/r/[relevant-subreddit]/search?q=[company]`
- **Access**: Free
- **Reliability**: Low; user opinions, verify facts

---

## API documentation

### Common patterns
- **Docs**: `docs.[domain]` or `[domain]/docs`
- **API reference**: `[domain]/api` or `api.[domain]`
- **Developer portal**: `developer.[domain]`
- **Access**: Usually free
- **Reliability**: High; official source

---

## Revenue estimation sources (in order of reliability)

1. **Company announcements** — Official blog posts, press releases
2. **Sacra reports** — Well-researched estimates with methodology
3. **GetLatka** — Self-reported SaaS metrics (verify recency)
4. **Contrary Research** — Detailed business breakdowns
5. **News articles** — TechCrunch, Bloomberg often report revenue
6. **Investor presentations** — Sometimes leaked or shared

**Always note the source and confidence level for revenue estimates.**

---

## Access notes

### Free with good data
- Crunchbase (basic)
- G2, Capterra, TrustRadius
- LinkedIn (basic)
- Product Hunt
- GitHub (if relevant)
- Company websites

### Limited free / mostly paywalled
- Tracxn (limited)
- PitchBook (very limited)
- CB Insights (very limited)
- SEMRush, Ahrefs (free tools only)
- BuiltWith (basic only)
- SimilarWeb (very limited)

### Requires account but free
- LinkedIn
- Glassdoor
- AngelList/Wellfound

When encountering paywalled data, note in output:
> "Not available (requires [tool] subscription)"
