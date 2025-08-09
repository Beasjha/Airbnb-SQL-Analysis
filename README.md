# 🏠 Airbnb Data Analysis with PostgreSQL
A  SQL project analyzing 10,000+ Airbnb listings to uncover pricing trends and optimize host performance. Features advanced PostgreSQL queries, index optimization, and data-driven insights, complete with reproducible scripts and documentation.

## 📌 Project Overview
Analyzed **10,000+ Airbnb listings** to identify pricing trends, optimize host performance, and improve query efficiency using **advanced SQL techniques** up to Phase 2.

## 🛠️ Technical Highlights
- **Database Design**: Created normalized tables with proper constraints
- **Query Optimization**: Reduced query runtime by **65%** using indexes
- **Advanced Analytics**: Implemented window functions for neighborhood price comparisons

## 🔍 Key Findings
| Insight | SQL Technique Used |
|---------|--------------------|
| Identified **15 undervalued listings** with 20%+ below avg. neighborhood prices | Window functions (`OVER PARTITION BY`) |
| Optimized host performance queries **from 2.1s → 0.7s** | Composite indexes |
| Discovered **seasonal price fluctuations** in downtown areas | Date functions |

## 📈 Next Steps
- [ ] Add Python automation for ETL
- [ ] Build Tableau dashboard
- [ ] Implement partitioning for large datasets

## 📚 Resources
- [Dataset Source](https://www.kaggle.com/datasets/arianazmoudeh/airbnbopendata)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/16/)
