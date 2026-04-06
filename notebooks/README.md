# Notebooks
Here are evaluation notebooks, using boxplots, simple statistics and ICC.

## Understanding the Intraclass Correlation Coefficient (ICC)

The **Intraclass Correlation Coefficient (ICC)** is a statistical measure used to determine how similar units within the same group are to one another. While a standard Pearson correlation ($r$) measures the linear relationship between two different variables (e.g., height and weight), the ICC measures the reliability or "consistency" of measurements of the *same* variable taken by different raters or instruments.

---

### 1. What Does It Actually Measure?
In simple terms, ICC tells you: **"Of all the variation we see in our data, how much of it is due to real differences between the subjects, and how much is just 'noise' from the raters?"**

* **ICC near 1:** High reliability. The subjects are very different from each other, but the raters agree on their scores.
* **ICC near 0:** Low reliability. The variation is mostly due to rater error or random noise rather than actual differences between subjects.



---

### 2. The Mathematical Foundation
The ICC is calculated as a ratio of variances. The general formula is:

$$ICC = \frac{\sigma^2_{between}}{\sigma^2_{between} + \sigma^2_{within}}$$

Where:
* $\sigma^2_{between}$: Variance between different subjects (the "true" signal).
* $\sigma^2_{within}$: Variance within the same subject (the "noise" or error between raters).

---

### 3. Common Use Cases
The ICC is the gold standard for assessing **Inter-rater Reliability**.

| Scenario | Example |
| :--- | :--- |
| **Medical Imaging** | Three radiologists calculate the volume of a tumor from the same MRI scan. |
| **Psychology** | Multiple observers rate the aggression levels of children in a playground. |
| **Product Testing** | Several sensors measure the temperature of the same engine component simultaneously. |

Our case: each of us designs BioImage Analysis workflow, using the components we think our best.

---

### 4. Why Not Just Use Pearson's $r$?
Standard correlation is "scale-blind." If Rater A always scores 10 points higher than Rater B, they will have a **perfect Pearson correlation ($r = 1.0$)**, but their **ICC will be low** because they do not actually agree on the absolute value. ICC accounts for both the correlation and the systematic bias between raters.

---

## 5. Helpful Resources
For a deeper dive into the different models of ICC (One-way vs. Two-way, Absolute Agreement vs. Consistency), check out these resources:

* [A Guideline for Selecting and Reporting ICC for Reliability Research](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4913118/) - A comprehensive academic guide.
* [Introduction to ICC - Statistics Solutions](https://www.statisticssolutions.com/free-resources/directory-of-statistical-analyses/inter-rater-reliability/intraclass-correlation-coefficient/) - A simplified breakdown for beginners.
* [Real Statistics Using Excel](https://www.real-statistics.com/reliability/intraclass-correlation/): Practical examples and calculation methods.
