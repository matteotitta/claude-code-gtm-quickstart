# Channel Scraping Guide

Detailed methods for accessing and analyzing content from each channel type.

---

## 1. Newsletter/Blog Platforms

### Substack

**URL patterns:**
- Archive: `[publication].substack.com/archive`
- Individual post: `[publication].substack.com/p/[slug]`
- About: `[publication].substack.com/about`

**Data accessible without API:**
| Data | Accessible | Method |
|------|------------|--------|
| Post titles | Yes | Archive page scraping |
| Post dates | Yes | Archive page scraping |
| Post content | Yes | Individual post fetch |
| Subscriber count | Sometimes | Shown on about page if enabled |
| Paid/Free status | Yes | Post metadata |
| Comments | Yes | Individual post fetch |

**Scraping approach:**
1. Fetch `/archive` page
2. Extract post list (title, date, URL)
3. Sample 10-15 posts for full content analysis
4. Fetch `/about` for subscriber count if visible

**Rate limits:** Be respectful — 1-2 requests/second max

---

### Beehiiv

**URL patterns:**
- Archive: `[publication].beehiiv.com/` (homepage usually shows archive)
- Individual post: `[publication].beehiiv.com/p/[slug]`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Post titles | Yes | Homepage/archive scraping |
| Post dates | Yes | Post metadata |
| Post content | Yes | Individual post fetch |
| Subscriber count | Rarely | Usually hidden |

**Scraping approach:**
1. Fetch homepage for post list
2. Navigate to archive if separate
3. Sample posts for content analysis

---

### Ghost

**URL patterns:**
- Archive/Blog: `[domain]/blog` or `[domain]/posts`
- Individual post: `[domain]/[slug]` or `[domain]/blog/[slug]`
- RSS: `[domain]/rss/`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Post titles | Yes | Blog page or RSS |
| Post dates | Yes | RSS or post metadata |
| Post content | Yes | Individual post fetch |
| Authors | Yes | Post metadata |

**Scraping approach:**
1. Try RSS feed first (`/rss/`)
2. Fall back to blog archive page
3. Extract post list with dates
4. Sample for content analysis

---

### ConvertKit / Custom Newsletters

**Access challenges:**
- Often require email signup
- Archives may be gated

**Workarounds:**
- Check if public archive exists
- Look for blog cross-posts
- Search: `site:[domain] newsletter OR edition`

---

### RSS Feeds (Universal Fallback)

**Common RSS patterns:**
- `/feed`
- `/rss`
- `/rss.xml`
- `/feed.xml`
- `/atom.xml`

**Data from RSS:**
| Data | Usually Available |
|------|-------------------|
| Post titles | Yes |
| Post dates | Yes |
| Post summaries | Yes (often truncated) |
| Full content | Sometimes |
| Categories/Tags | Sometimes |

---

## 2. LinkedIn

### Company Pages

**URL pattern:** `linkedin.com/company/[company-name]/posts/`

**Data accessible without API:**
| Data | Accessible | Method |
|------|------------|--------|
| Recent posts | Limited | Page scraping (requires auth for full) |
| Post content | Limited | Visible posts only |
| Follower count | Yes | Company page header |
| Employee count | Yes | Company page |
| Post engagement | Limited | Visible on posts |

**Challenges:**
- LinkedIn heavily restricts scraping
- Full post history requires logged-in access
- Engagement metrics often hidden behind clicks

**Best approach:**
1. Fetch company page for follower count
2. Review visible posts (usually last 10-20)
3. Note: Full analysis may require manual review or third-party tools

---

### Personal Profiles (Founder LinkedIn)

**URL pattern:** `linkedin.com/in/[username]/recent-activity/all/`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Recent posts | Limited | Activity page (login may be required) |
| Post content | Limited | Visible posts |
| Connections/Followers | Sometimes | Profile header |
| Engagement | Limited | Visible metrics |

**Best approach:**
1. Fetch `/recent-activity/all/` URL
2. Note that full history requires manual review
3. Sample visible posts for voice/format analysis

---

### LinkedIn API (If Available)

**OAuth requirements:** Requires approved LinkedIn application

**Available endpoints:**
- Company updates: `GET /v2/ugcPosts?q=authors&authors=urn:li:organization:{id}`
- Engagement: Limited to owned pages

**Note:** LinkedIn API access is highly restricted. Most audits rely on manual review or third-party tools like Shield, Taplio, or AuthoredUp.

---

### Third-Party LinkedIn Tools

For deeper LinkedIn analytics, recommend:

| Tool | What It Provides | Cost |
|------|------------------|------|
| **Shield** | Post analytics, engagement trends | Paid |
| **Taplio** | Scheduling + analytics | Paid |
| **AuthoredUp** | Post analytics, hooks library | Paid |
| **Kleo** | Chrome extension for post analysis | Free/Paid |

---

## 3. YouTube

### Channel Page Scraping

**URL patterns:**
- Channel: `youtube.com/c/[channel-name]` or `youtube.com/@[handle]`
- Videos tab: `youtube.com/@[handle]/videos`
- Playlists: `youtube.com/@[handle]/playlists`
- About: `youtube.com/@[handle]/about`

**Data accessible without API:**
| Data | Accessible | Method |
|------|------------|--------|
| Channel name | Yes | Page header |
| Subscriber count | Yes | Page header |
| Total videos | Yes | Videos tab |
| Video titles | Yes | Videos tab |
| View counts | Yes | Video thumbnails |
| Upload dates | Yes | Video metadata |
| Video duration | Yes | Thumbnails |

**Scraping approach:**
1. Fetch channel page for overview metrics
2. Fetch `/videos` tab for video list
3. Note recent uploads (last 20-30 videos)
4. Sample 3-5 videos for deeper analysis

---

### YouTube Data API v3

**If user provides API key:**

**Key endpoints:**

```
# Channel stats
GET /youtube/v3/channels?part=statistics,snippet&id={CHANNEL_ID}

# Video list
GET /youtube/v3/search?part=snippet&channelId={CHANNEL_ID}&order=date&maxResults=50

# Video details
GET /youtube/v3/videos?part=statistics,contentDetails,snippet&id={VIDEO_ID}
```

**Data available with API:**
| Data | Endpoint |
|------|----------|
| Subscriber count | channels/statistics |
| Total views | channels/statistics |
| Video count | channels/statistics |
| Video titles | search |
| Video descriptions | videos/snippet |
| View counts | videos/statistics |
| Like counts | videos/statistics |
| Comment counts | videos/statistics |
| Video duration | videos/contentDetails |
| Upload date | videos/snippet |
| Thumbnails | videos/snippet |

**Rate limits:** 10,000 units/day default quota

**Unit costs:**
- Channel stats: 1 unit
- Search: 100 units
- Video details: 1 unit per video

---

### YouTube Analytics (Owned Channels Only)

If auditing own channel with OAuth:
- Watch time
- Audience retention
- Traffic sources
- Demographics

**Note:** Not available for competitor channels

---

## 4. Events Platforms

### Luma

**URL patterns:**
- Profile page: `lu.ma/[username]` or `lu.ma/[organization]`
- Individual event: `lu.ma/[event-slug]`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Event titles | Yes | Profile page |
| Event dates | Yes | Profile page |
| Event descriptions | Yes | Individual event pages |
| Attendee count | Sometimes | Shown on some events |
| Virtual/In-person | Yes | Event metadata |
| Past events | Yes | Profile page (may need scroll) |

**Scraping approach:**
1. Fetch profile page for event list
2. Note past and upcoming events
3. Sample event pages for descriptions
4. Note attendance if visible

---

### Eventbrite

**URL patterns:**
- Organizer page: `eventbrite.com/o/[organizer-name]-[id]`
- Individual event: `eventbrite.com/e/[event-slug]-[id]`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Event titles | Yes | Organizer page |
| Event dates | Yes | Organizer page |
| Event descriptions | Yes | Event pages |
| Ticket types/prices | Yes | Event pages |
| Attendee count | Rarely | Usually hidden |

**Scraping approach:**
1. Search for organizer page
2. List past and upcoming events
3. Sample event pages for details

---

### LinkedIn Events

**URL pattern:** `linkedin.com/company/[company]/events/`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Event titles | Yes | Events tab |
| Event dates | Yes | Events tab |
| Attendee interest | Limited | Sometimes visible |

**Note:** LinkedIn event data is limited without login

---

### Meetup

**URL patterns:**
- Group page: `meetup.com/[group-name]/`
- Events: `meetup.com/[group-name]/events/`

**Data accessible:**
| Data | Accessible | Method |
|------|------------|--------|
| Event titles | Yes | Events page |
| Event dates | Yes | Events page |
| RSVP counts | Yes | Events page |
| Group members | Yes | Group page |
| Past events | Yes | Past events tab |

---

## 5. Website Content (Blog/Resources)

### Standard Blog Discovery

**Common URL patterns:**
- `/blog`
- `/blog/`
- `/resources`
- `/insights`
- `/news`
- `/articles`
- `/learn`
- `/knowledge`

**Discovery approach:**
1. Check navigation menu for content sections
2. Check footer for blog/resources links
3. Search: `site:[domain] blog OR resources OR articles`

---

### Content Hub Analysis

**What to extract:**
| Element | Where to Find |
|---------|---------------|
| Blog post list | Blog index page |
| Post dates | Post metadata or URL patterns |
| Categories/Tags | Post metadata, sidebar, or URL |
| Authors | Post bylines |
| Lead magnets | CTAs, popups, sidebar |
| Newsletter signup | Footer, sidebar, popups |

---

## 6. Podcast Platforms

### Spotify for Podcasters

**URL pattern:** `open.spotify.com/show/[show-id]`

**Data accessible:**
| Data | Accessible |
|------|------------|
| Episode titles | Yes |
| Episode dates | Yes |
| Episode durations | Yes |
| Episode descriptions | Yes |
| Total episodes | Yes |

---

### Apple Podcasts

**URL pattern:** `podcasts.apple.com/podcast/[podcast-name]/id[id]`

**Data accessible:**
| Data | Accessible |
|------|------------|
| Episode titles | Yes |
| Episode dates | Yes |
| Ratings/Reviews | Yes |
| Episode count | Yes |

---

### RSS Podcast Feeds

Most podcasts have RSS feeds with:
- Episode titles
- Dates
- Durations
- Descriptions
- Audio URLs

**Finding RSS:**
- Check podcast page source
- Use podcast directories
- Search: `[podcast name] rss feed`

---

## 7. General Scraping Best Practices

### Rate Limiting

| Platform | Recommended Rate |
|----------|------------------|
| Substack | 1-2 req/sec |
| LinkedIn | Manual review recommended |
| YouTube | Use API when possible |
| Luma | 1 req/sec |
| Eventbrite | 1 req/sec |
| General websites | 1 req/sec |

### Error Handling

**Common issues:**
- 403 Forbidden: Rate limit or auth required
- 429 Too Many Requests: Slow down
- Redirect: Follow to new URL
- JavaScript rendering: May need browser automation

### Data Quality Checks

After scraping, verify:
- [ ] Dates are parsed correctly
- [ ] No duplicate entries
- [ ] Content is complete (not truncated)
- [ ] Links resolve properly

---

## 8. Manual Review Recommendations

When scraping is insufficient, recommend manual review for:

| Platform | Manual Review Needed For |
|----------|--------------------------|
| LinkedIn | Full post history, engagement metrics |
| YouTube | Comments quality, community tab |
| Events | Actual attendance numbers |
| Podcasts | Download numbers (owned shows only) |

**Tools that help:**
- Screenshot tools for capturing data
- Spreadsheet for manual tracking
- Third-party analytics tools (Shield, Taplio, TubeBuddy)
