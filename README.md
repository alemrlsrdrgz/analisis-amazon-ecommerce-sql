# Marketing Analysis for Amazon Ecommerce with SQL

## 1. The Case

This project answers the following business question:
**Where should Amazon invest its marketing budget next quarter?**

To answer it, an ecommerce database was analyzed using SQL, with the goal of identifying which categories, products, and acquisition channels generate the most value for the business. The analysis covers sales by category, registered customers who haven't purchased, premium products, top spending customers, star products by category, and marketing channels with the highest revenue.

The analysis was performed on a SQLite database made up of five tables: `categories`, `products`, `customers`, `orders`, and `order_details`. Based on the results, a data driven marketing investment recommendation is proposed.

---

## 2. Findings

**2.1 Categories with the highest revenue**

The top revenue category is Electronics, with $1,269.83, roughly 40.4% of total revenue. Home and Kitchen follows with $759.94, then Sports with $699.94. Revenue is not distributed evenly across categories; a significant share of sales is concentrated in tech products. Categories like Fashion and Books have a smaller share of the total analyzed.

**2.2 Registered customers who never purchased**

Three registered customers were identified who haven't made a purchase yet: Mariana Silva, Isabella Ramírez, and Tomás Herrera. They came through the Search, Email, and Referral channels, which shows that the lack of conversion isn't tied to a single acquisition source. Although these users showed initial interest by registering, they didn't move forward to complete a purchase, making them a relevant group for understanding potential drop off points in the sales process.

**2.3 Premium products in the catalog**

Premium products, defined as those priced above the store average, are concentrated mainly in Sports, Home and Kitchen, and Electronics. Examples include the Stationary Bike, Robot Vacuum, Kindle Paperwhite, and Fire HD 10 Tablet. A high price alone doesn't mean a product is critical to the business though. Understanding its real relevance also requires checking whether it drives significant revenue through actual sales.

**2.4 Top spending customers**

Among the five highest spending customers, three came through the Search channel and two through Social Media. This shows that **Search** has a strong presence among high value customers. Social Media also stands out as a relevant channel, though with less weight within this top spending group.

**2.5 Star products by category**

Ranking products by revenue within each category reveals two main patterns. In Electronics, several products perform well, including Kindle Paperwhite, Echo Dot 5, Bluetooth Headphones, and Fire TV Stick 4K, showing that this category doesn't rely on a single star product. In other categories, revenue tends to concentrate around one or two main products, such as the Stationary Bike in Sports and the Robot Vacuum in Home and Kitchen. There's also a tie in Electronics between Bluetooth Headphones and Fire TV Stick 4K, both generating $199.96 in revenue.

**2.6 Marketing channels with the highest revenue**

Search is the channel with the highest total revenue, at $1,758.81. It's also the channel with the highest average revenue per customer, at approximately $439.70. Social Media ranks second, with $969.88 in total revenue. This indicates that customers acquired through Search show stronger purchasing behavior, both in total revenue generated and in average spend per customer. Email and Referral show lower revenue compared to the other channels.

---

## 3. Recommendation

The recommendation isn't simply to invest where sales are highest today, but to prioritize the combination showing the most consistent signals of demand, purchase intent, and high value customers. Based on the available data, the strongest combination is Search + Electronics.

Electronics generates the most revenue and includes several star products, which allows a campaign to run without depending on a single product. At the same time, Search is the channel with the highest total revenue, the highest average revenue per customer, and the strongest presence among top spending customers. That said, the analysis doesn't include data on acquisition costs, margins, conversion rates, or return on investment. Because of that, it wouldn't be wise to allocate 100% of the budget to a single bet. The suggested budget split is as follows:

| Strategy                          | Suggested Budget | Role in the Strategy                                                                                    |
| ---------------------------------- | -----------------: | --------------------------------------------------------------------------------------------------------- |
| Search + Electronics                |                  60% | Primary bet, backed by the strongest evidence of demand, customer value, and star products                |
| Social Media + premium products    |                  25% | Secondary bet targeting visual, high ticket products in Sports and Home and Kitchen                        |
| Reactivation emails                 |                  10% | Recover registered customers who haven't purchased yet                                                     |
| Referrals / A/B testing             |                   5% | Controlled experimentation to validate new opportunities                                                   |

**In conclusion**, Amazon should invest primarily in Search + Electronics next quarter. This decision rests on three key signals: a high demand category, a channel that attracts higher value customers, and a set of star products that allows campaigns to scale without relying on a single one.

