---
id: IS-EVD-2025-09-10-ANALYSIS-HOW-AI-MODELS-ARE-TRAINED-ON-TEXT-AND-THE-COPYRIGHT-QUESTIONS-BEHIND-A-1-5-BILLION-SETTLEMENT
slug: 2025-09-10-analysis-how-ai-models-are-trained-on-text-and-the-copyright-questions-behind-a-1-5-billion-settlement
title: "Evidence: How AI models are trained on text, and the copyright questions behind a $1.5 billion settlement"
collection: evidence
doc_type: evidence-capture
news_id: IS-NEWS-2025-09-10-ANALYSIS-HOW-AI-MODELS-ARE-TRAINED-ON-TEXT-AND-THE-COPYRIGHT-QUESTIONS-BEHIND-A-1-5-BILLION-SETTLEMENT
news_file: news/IS_NEWS_2025-09-10-analysis-how-ai-models-are-trained-on-text-and-the-copyright-questions-behind-a-1-5-billion-settlement.md
publisher: "Thinking Freely (Substack)"
url: https://nitafarahany.substack.com/p/ailawpolicyclass5
archived_url: https://web.archive.org/web/20261111072752/https://nitafarahany.substack.com/p/ailawpolicyclass5
captured: 2026-11-14T02:53:23Z
capture_status: captured
http_status: 200
article_author: "Nita Farahany"
published: 2025-09-10
public_domain: false
text_sha256: 47f265fd7e96d72265a6786c443cf883ff7f67bfe0968e9e15dff660d0ab1e8c
current_sha256: 47f265fd7e96d72265a6786c443cf883ff7f67bfe0968e9e15dff660d0ab1e8c
last_checked: 2026-11-14
raw_record: "Supabase news_snapshots, slug 2025-09-10-analysis-how-ai-models-are-trained-on-text-and-the-copyright-questions-behind-a-1-5-billion-settlement, page SHA-256 1000963e3e3520ad5bd7d8a831b1342d8d591830b967903907a46b4936366541"
collected_by: "Sean C. Harris, invisibleships.com"
copyright: "The article belongs to Thinking Freely (Substack). Captured as evidence of the page on 2026-11-14; not republished on invisibleships.com."
disclaimer: meta/IS_META_terms.md
---
# Evidence: How AI models are trained on text, and the copyright questions behind a $1.5 billion settlement

**Captured 2026-11-14 as evidence of the page as it appeared that day. All rights belong to Thinking Freely (Substack).** This archive did not write it and takes no credit for it. Read the original at [https://nitafarahany.substack.com/p/ailawpolicyclass5](https://nitafarahany.substack.com/p/ailawpolicyclass5).

- **Original:** [https://nitafarahany.substack.com/p/ailawpolicyclass5](https://nitafarahany.substack.com/p/ailawpolicyclass5)
- **Written by:** Nita Farahany
- **Published (as stated by the source):** 2025-09-10
- **Internet Archive copy:** [https://web.archive.org/web/20261111072752/https://nitafarahany.substack.com/p/ailawpolicyclass5](https://web.archive.org/web/20261111072752/https://nitafarahany.substack.com/p/ailawpolicyclass5)
- **This archive's summary:** `news/IS_NEWS_2025-09-10-analysis-how-ai-models-are-trained-on-text-and-the-copyright-questions-behind-a-1-5-billion-settlement.md`
- **Collected by:** Sean C. Harris, invisibleships.com. Written by and belongs to Thinking Freely (Substack).
- **Fingerprint (SHA-256 of the captured text):** `47f265fd7e96d72265a6786c443cf883ff7f67bfe0968e9e15dff660d0ab1e8c`
- **Full page as fetched:** kept as the raw record in this archive's database (`news_snapshots`, SHA-256 `1000963e3e3520ad5bd7d8a831b1342d8d591830b967903907a46b4936366541`).

## Captured text

8:55 a.m., Wednesday. Welcome back to Professor Farahany’s AI Law & Policy Class.

`$1,500,000,000`

That’s a really big number. Last week, Anthropic and a group of authors [announced a proposed $1.5 billion settlement](https://www.reuters.com/sustainability/boards-policy-regulation/anthropic-agrees-pay-15-billion-settle-author-class-action-2025-09-05/), which is potentially the largest copyright settlement in U.S. history. And then on Monday, the judge [lambasted the settlement](https://apnews.com/article/anthropic-authors-book-settlement-ai-copyright-claude-b282fe615338bf1f98ad97cb82e978a1), asking for more information before approving it. He wants to understand exactly how many authors are affected and whether the settlement amount is fair.

Consider this your official seat in my class—except you get to keep your job and skip the debt. Every Monday and Wednesday, you asynchronously attend my AI Law & Policy class alongside my Duke Law students. They’re taking notes. You should be, too. And remember that live class is 85 minutes long. Take your time working through this material.

Just joining us? Go back and start with [Class 1 (What is AI?)](https://open.substack.com/pub/nitafarahany/p/inside-my-ai-law-and-policy-class?r=1183hr&utm_campaign=post&utm_medium=web&showWelcomeOnShare=false), [Class 2 (How AI Actually Works)](https://nitafarahany.substack.com/p/how-ai-actually-works), [Class 3 (Open vs. Closed AI Models)](https://nitafarahany.substack.com/p/open-vs-closed-ai-models-inside-my), and [Class 4 (The Control Paradox)](https://nitafarahany.substack.com/p/the-ai-control-paradox-youre-the). You need that foundation.

Today, we’re going focus on the “[data layer](https://www.paladincapgroup.com/wp-content/uploads/2025/06/AI-Tech-Stack-Report.pdf)” of the “[AI tech stack](https://www.paladincapgroup.com/wp-content/uploads/2025/06/AI-Tech-Stack-Report.pdf).” We’ll start by grappling with how AI models are trained, the copyright questions this raises, and why governing training data presents such interesting challenges. By the end of class, you’ll understand why OpenAI’s CEO said that creating ChatGPT without copyrighted content would be “impossible” and you’ll be able to evaluate for yourself whether you think that claim makes sense.

**Your Starting Position**

Before we dive in, where do you stand?

*(With apologies to the many of you who voted already on the polls, these have been reset to zero so that they are "forever” polls rather than one day polls! So vote again!).*

## **Part I: How AI Actually Learns (And 76,000 Years of Reading)**

Let’s start with scale. GPT-4 was trained on approximately 13 trillion tokens—roughly 10 trillion words.

A token is roughly 3/4 of a word. Modern AI systems use something called “[subword tokenization](https://www.geeksforgeeks.org/nlp/subword-tokenization-in-nlp/),” which means that they break text into flexible building blocks rather than whole words (we’ll dive into tokenization a little bit more in just a minute).

**Visualization Exercise #1: Understanding the Scale**

**Quick Math:** If you read at 250 words per minute, how long would it take you to read GPT-4’s training data?

Do the calculation yourself:

- 10 trillion words ÷ 250 words/minute = ?
- Convert to hours: ÷ 60 = ?
- Convert to days: ÷ 24 = ?
- Convert to years: ÷ 365 = ?

In my live class, one of the students used his iPad to do the calculation for us. Try it yourself, and write your answer before scrolling down.

….

Yep. 76,000 years of continuous reading. Without breaks, without sleeping, without going slower. Just reading.

Which means that if you started reading when agriculture was invented around 10,000 BCE, you’d need about another 64,000 years.

GPT-4’s training took about [90-100 days](https://medium.com/data-science/the-carbon-footprint-of-gpt-4-d6c676eb21ae).

## **Part II: The Five Stages of Text Becoming Intelligence**

Now let’s trace what happens when a New York Times article becomes part of an AI’s knowledge. You need to understand this technically to grasp the legal implications of the [New York Times v. Microsoft, Open AI et al.](https://nytco-assets.nytimes.com/2023/12/NYT_Complaint_Dec2023.pdf) complaint that we read for today.

**Stage 1: The Download (The First Copy)**

Companies gather text from various sources through web crawling, which means systematically downloading web pages, purchasing datasets from data brokers, using publicly released datasets like Common Crawl, and accessing research databases and digital libraries. For GPT-3, OpenAI disclosed that nytimes.com was one of their top 15 sources by volume. They downloaded articles, stored them, and prepared them for processing.

Every download creates a copy. When you visit a webpage, your browser makes a temporary copy to display it. When training AI, companies make permanent copies for processing.

Here’s what happens when OpenAI’s crawler reaches nytimes.com:

**INTERACTIVE DIAGRAM: Trace the Path**

NYTimes Server → HTTP Request → OpenAI Crawler → Downloaded Copy → Storage (Original) (Copy #1) (Copy #2) (Copy #3)

Every arrow represents a copy being made. By the time the article is ready for processing, it’s been copied at least 3 times.

Which at this stage, raises some complex challenges for governance. Who verifies the accuracy of the data collected? What if someone intentionally posts false information (and does so in volume) to “poison” the data? How do you trace the source of information once it’s mixed in with billions of other documents?

**Now for your threat assessment!**

**Stage 2: Tokenization (Breaking Language into LEGO Blocks)**

Tokenization is how we convert human-readable text into numbers that computers can process.

**I’m putting this sentence on the virtual blackboard for you now:**

Now let’s tokenize it together:

- The cat sat on the mat → \[464, 3797, 2954, 319, 262, 6384\]

Let’s try another one:

Pneumonoultramicroscopicsilicovolcanoconiosis → \[47, 29727, 261, 619, 2416, 4988, 1416, 25847, 86, 349, 5171, 35492, 313, 2100\]

Notice how common words get single tokens, but that crazy term exploded into 14 pieces? That’s intentional. The model can handle ANY word by breaking it into known pieces.

During tokenization companies also remove duplicate content since the same article might appear multiple times across different websites. They filter out certain types of content like spam or adult material. They strip formatting and metadata to create clean text. And critically, they often remove attribution information to create clean training data.

- **ORIGINAL:** According to *The New York Times*, inflation rose 3% last month
- **FILTERED:** inflation rose 3% last month

Why?

In the live class, the first person thought it was to avoid liability for copyright. (I love it. You’re all thinking like lawyers now!).

But there’s probably a technical reason first and foremost that motivate this. If every sentence included “according to the New York Times,” the model would learn to constantly cite sources in inappropriate contexts. But this creates a challenge for governance, too. Once attribution is removed, how can you trace information back to its source?

**Stage 3: The Training Loop**

Training uses a technique called “[masked language modeling](https://huggingface.co/docs/transformers/en/tasks/masked_language_modeling).” Here’s a simplified version:

The model sees “The cat \[MASK\] on the mat” and tries to predict “sat.”

If it’s wrong, it adjusts its parameters slightly. This process repeats billions of times with different sentences.

The model has 1.76 trillion parameters. These are numbers that get adjusted during training. These parameters encode patterns about language, facts, reasoning, and more. Think of them as the “dials” that we talked about in Class 2, that get turned to tune the model’s understanding.

**Here’s what one training step might look like:**

Input: The cat \[MASK\] on the mat

Model predicts: runs (Probability: 0.15)

Correct answer: sat

Adjustment: Tweak 0.0000001% of 1.76 trillion parameters

Now imagine this happening 100 billion times, on different sentences, simultaneously across thousands of GPUs (we’ll get to GPUs soon, I promise), for 100 days straight.

But what happens when the model sees the same text, like “[Four Score and Seven Years Ago](https://www.abrahamlincolnonline.org/lincoln/speeches/gettysburg.htm)” over and again?

When it sees that once, it learns the pattern. When it sees it 10 times, it learns a strong pattern. 100 times leads to probable memorization. 1000+ times? Almost definitely memorization.

If you haven’t checked out the [NYT complaint](https://nytco-assets.nytimes.com/2023/12/NYT_Complaint_Dec2023.pdf), you should now. They claim direct copying because of “memorization” and it’s a big issue in the case.

**Interactive Discovery Exercise**

Enter into the prompt dialogue of your favorite LLM this query: *How do you make the perfect soufflé?*

The model outputs this text:

To make the perfect soufflé, you need exactly 6 eggs, separated, with whites beaten to stiff peaks. Fold gently to maintain volume. Bake at 375°F for 22 minutes. Do not open the oven door.

**Your Investigation:**

1. Is this memorized or generated? How would you tell?
2. If memorized, how many times did it likely appear in training data?
3. Could you trace it back to its source?

Here’s the thing. Popular recipes like this one appear on thousands of websites. The model has seen this soufflé recipe like 5,000 times. It’s memorized. But good luck figuring out which of the 5,000 sources it learned from.

**Stage 4: Fine-Tuning**

After initial training, models undergo fine-tuning for specific purposes. This includes instruction-following so the model understands commands, safety training so it refuses harmful requests, and specialized knowledge for domains like medicine or law.

Fine-tuning is surprisingly easy. With just a few thousand examples and a regular computer, you can adapt a model’s behavior significantly. This is powerful but raises questions – you can fine-tune a model to remove safety features or add dangerous capabilities. Researchers showed they could fine-tune open models to provide detailed instructions for creating biological weapons, even when the base model had safety training to refuse such requests.

*Want to try this at home?*

**Try Fine-Tuning Yourself**

Here’s a safe, hands-on demo so you can see how a few examples can change a model’s behavior.

👉 Open the [Fine-Tuning Demo in Colab](https://drive.google.com/file/d/1BHek-WTjEbt547CzMxM73WcrBq96OXAC/view?usp=sharing)

**Instructions:**

1. In Colab, go to **Runtime → Change runtime type → GPU** (this makes it run faster).
2. Then click **Runtime → Run all** to execute the whole notebook.
3. Watch the outputs “before” and “after” fine-tuning. You’ll see how the model starts responding in the style of an **AI Law & Policy Tutor**, based only on a handful of examples.

And even if you *don’t* do this yourself, it should make you realize that I think that you *can*, and modify a model’s behavior quickly, which shows both the creative potential and the risks of removing safety features this presents. All of which raises important questions about oversight of training data (here, the fine-tuning data set), licensing, and accountability when it’s this easy to customize a model.

**Stage 5: Deployment**

The trained model is deployed through APIs or applications. When you type a prompt, your text gets tokenized, passes through the model’s parameters, generates probability distributions for next tokens, samples tokens to create a response, and converts those tokens back to text.

Sometimes, the model reproduces training data verbatim – this is called “memorization.” OpenAI calls this [a “bug” they’re working to fix](https://arxiv.org/html/2412.06370v1), but it reveals that some training data persists in the model. It’s like having perfect recall of something you read once, except the model might have seen popular content thousands of times during training.

Now that you understand how AI models are technically trained, from collection through deployment, you can see why copyright holders are concerned. And why there have been [more than 50 AI copyright infringement suits](https://copyrightalliance.org/ai-copyright-case-developments-2025/) over the past few years. Every single stage involves copying, processing, and transforming their work.

But to understand why Anthropic might owe $1.5 billion; while claiming they did nothing wrong, we need to examine the legal framework these technical processes collide with. And this is where things get particularly interesting, because the law is trying to apply centuries-old concepts to technology that didn’t exist five years ago.

## **Part III: The Copyright Collision**

Now that you understand the technical process, let’s examine the legal earthquake it created and see what investigators found when they traced AI training datasets. Three names keep appearing: [Library Genesis](https://libgen.ac/), [Books3](https://huggingface.co/datasets/stephenwalker/books3-labeled), and [Pirate Library Mirror](https://thenextweb.com/news/pirate-library-mirror-wants-to-preserve-human-knowledge-illegally). These are collections of digitized books (and millions of them), all available without publisher authorization.

Ben Mann, co-founder of Anthropic, [testified that while at OpenAI in 2019, he downloaded the Library Genesis dataset](https://www.nytimes.com/2025/09/05/technology/anthropic-settlement-copyright-ai.html). He said he believed it was “fair use” at the time. This testimony became central to the lawsuit. Which must make you wonder … what is “fair” use?

Before we get there, a quick pulse check:

You’re running an AI startup in 2019. You need training data. Your options:

**Option A: License Everything Legally**

- **Cost:** $2-5 billion
- **Time:** 18-24 months of negotiations
- **Coverage:** Maybe 20% of published works
- **Quality:** Verified, clean, legal

**Option B: Use Shadow Libraries**

- **Cost:** $0
- **Time:** 3 days to download
- **Coverage**: 80% of all books ever written
- **Quality:** Unknown, possibly corrupted, definitely illegal

**Option C: Public Domain Only**

- **Cost:** $0
- **Time:** Immediate
- **Coverage:** Books before 1928
- **Quality:** No modern language, concepts, or knowledge

**Great.** Your competitor just announced they’re using Option B and launching in 3 months.

The live students gravitated toward option C. One or two chose option A. A few chose Option B. Meanwhile? Your competitor launched a multi-trillion-dollar business.

**The Judge’s $1.5 Billion Question**

Last week, Judge Alsup asked **the key question** about the $1.5 billion dollar settlement. If there are 500,000 authors, and they are getting $3,000 per work… where did you come up with the $3,000 per work number?

Anthropic couldn’t clearly explain the rationale behind that number. Probably because the real answer is that it’s a number that sounds big enough to make this go away, but is still small enough that they can afford it.

Let’s try it this way. If each book contributed 0.0001% to the model’s capabilities, and the model generates $10 billion in revenue, what’s each book worth?

- Your answer: $\_\_\_\_\_\_\_\_\_\_
- Anthropic’s answer: $3,000
- Authors’ demand: $150,000

*Who’s right?*

## **Part IV: The Fair Use Debate**

This is ***not*** a class on copyright liability. Nor am I a copyright scholar. So we are going to do a light version of this, just to understand one of the major governance mechanisms being targeted at training data. (And by the way, different countries are approaching this problem differently, so this discussion is about the U.S. approach).

Fair use is a legal doctrine that allows limited use of copyrighted material without permission for purposes like criticism, comment, news reporting, teaching, or research. Courts consider four factors, and we’ll examine how each applies to AI training.

It was developed for things like quoting books in reviews or photocopying articles for classroom use. Using it for AI training is stretching the doctrine in new directions.

**Factor 1: Is It Transformative?**

The central legal question is whether AI training is “[transformative](https://www.copyright.gov/fair-use/).” (Here’s we’re not talking about “transformer” model, but transformative in the legal sense).

AI companies argue it is, because they convert text into mathematical patterns, similar to how Google Books was allowed to scan books for search without copying their expressive content.

Copyright holders disagree, saying the output often competes directly with the originals—a model trained on news articles can write new articles, which looks more like substitution than transformation. Technically, training does change the format (like turning a song into an MP3), but the system can still recreate similar works.

*It might look like this:*

**The Transformation Test**

##### ORIGINAL TRAINING DATA INPUT: It was the best of times, it was the worst of times...

##### ↓ TOKENIZED: \[1026, 373, 262, 1266, 286, 1661, 11, 340, 373, 262, 5290, 286, 1661, 986\]

##### ↓ PARAMETERS: 0.00001% adjustment to 1.76 trillion numbers

##### ↓ OUTPUT: It was the best of times, it was the worst of times...

But wait, says the NYT, if input equals output, where’s the transformation? The U.S. Copyright Office has weighed in with [some guidance](https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-3-Generative-AI-Training-Report-Pre-Publication-Version.pdf).

**Factor 2: Nature of the Work**

Another legal factor is whether the works used for training are creative or factual. AI systems don’t just scrape random text—they deliberately favor high-quality material like published books (highly creative and strongly protected), news articles (a mix of fact and creative expression), academic papers (more factual, less protected), and a wide range of web content.

OpenAI has even acknowledged weighting “higher-quality” sources more heavily, which often means professionally authored, copyrighted works.

This creates a paradox. We want AI trained on accurate, well-written material, but that is also the content copyright law protects most strongly.

Should the law really incentivize training on lower-quality, less protected content instead?

**Factor 3: Amount Used**

The third factor asks how much of a work was used. In the case of AI training, the answer is usually “all of it.” Companies say they need entire works to provide the model with context, and courts have sometimes allowed full copying when the use was transformative. But here the scale is unlike anything seen before—millions of complete works are copied wholesale. Previous fair use cases involved limited, targeted copying for specific purposes; AI training, by contrast, ingests essentially everything available.

That raises a core question about whether scale matters in fair use, and whether the law should treat one researcher copying a single book differently from a company copying every book in existence?

**Factor 4: Market Effect**

The fourth factor looks at how AI training affects the market for original works, and here the risks are serious. AI can directly compete by generating substitutes—if ChatGPT summarizes a news article, readers may skip the original. It also threatens a new licensing market that is emerging. Publishers are starting to sell rights for training data, but if companies train without paying, that market could vanish before it matures. And AI can flood the market with endless content, lowering the value of human-created work simply by overwhelming it.

We’re already seeing impacts: some news sites report [traffic drops of 20–30% since AI tools became popular](https://www.bbc.com/news/articles/c0mlvryx0exo), stock photo companies are losing revenue, and traditional publishers are scrambling to adapt.

**And then, there are the existential questions:**

*If AI can summarize any article instantly, why would anyone pay for journalism?*

*If no one pays for journalism, who investigates corruption?*

*Can AI investigate corruption?*

*Do you see the spiral we’re in?*

**The Hard Questions**

We’ve spent this class understanding HOW AI training works and WHAT the legal arguments are. But we haven’t asked if we SHOULD we allow this.

Do we want AI systems that have ingested all of human knowledge? If yes, should they train on the best data even if copyrighted? How do we ensure everyone benefits?

**Your Homework Experiment**

**Discuss these three things with a friend or family member:**

1. **If AI makes all information free, what becomes valuable?**
2. **If no one owns AI output, does anyone own anything?**
3. **If we can’t govern AI training, can we govern AI at all?**

**Class dismissed.**

But you’re not done thinking about this. In fact, you’re just starting to see the size of the problem. The $1.5 billion isn’t a settlement. It’s an admission that we’re using money to paper over a governance crisis.

See you Monday, when we look at actual governance proposals and why this layer of the stack may be just as hard to govern as the last one.

**The entire class lecture is above, but for those of you who want to support my work or go deeper in the class, class readings, video assignments, and virtual chat-based office-hours details are below.**

## Links found in the captured text

*Every link in the article, in order. The sources a reporter linked are part of the record.*

1. [announced a proposed $1.5 billion settlement](https://www.reuters.com/sustainability/boards-policy-regulation/anthropic-agrees-pay-15-billion-settle-author-class-action-2025-09-05/)
2. [lambasted the settlement](https://apnews.com/article/anthropic-authors-book-settlement-ai-copyright-claude-b282fe615338bf1f98ad97cb82e978a1)
3. [Class 1 (What is AI?)](https://open.substack.com/pub/nitafarahany/p/inside-my-ai-law-and-policy-class?r=1183hr&utm_campaign=post&utm_medium=web&showWelcomeOnShare=false)
4. [Class 2 (How AI Actually Works)](https://nitafarahany.substack.com/p/how-ai-actually-works)
5. [Class 3 (Open vs. Closed AI Models)](https://nitafarahany.substack.com/p/open-vs-closed-ai-models-inside-my)
6. [Class 4 (The Control Paradox)](https://nitafarahany.substack.com/p/the-ai-control-paradox-youre-the)
7. [data layer](https://www.paladincapgroup.com/wp-content/uploads/2025/06/AI-Tech-Stack-Report.pdf)
8. [subword tokenization](https://www.geeksforgeeks.org/nlp/subword-tokenization-in-nlp/)
9. [90-100 days](https://medium.com/data-science/the-carbon-footprint-of-gpt-4-d6c676eb21ae)
10. [New York Times v. Microsoft, Open AI et al.](https://nytco-assets.nytimes.com/2023/12/NYT_Complaint_Dec2023.pdf)
11. [464, 3797, 2954, 319, 262, 6384\]

Let’s try another one:

Pneumonoultramicroscopicsilicovolcanoconiosis → \[47, 29727, 261, 619, 2416, 4988, 1416, 25847, 86, 349, 5171, 35492, 313, 2100\]

Notice how common words get single tokens, but that crazy term exploded into 14 pieces? That’s intentional. The model can handle ANY word by breaking it into known pieces.

During tokenization companies also remove duplicate content since the same article might appear multiple times across different websites. They filter out certain types of content like spam or adult material. They strip formatting and metadata to create clean text. And critically, they often remove attribution information to create clean training data.

- **ORIGINAL:** According to *The New York Times*, inflation rose 3% last month
- **FILTERED:** inflation rose 3% last month

Why?

In the live class, the first person thought it was to avoid liability for copyright. (I love it. You’re all thinking like lawyers now!).

But there’s probably a technical reason first and foremost that motivate this. If every sentence included “according to the New York Times,” the model would learn to constantly cite sources in inappropriate contexts. But this creates a challenge for governance, too. Once attribution is removed, how can you trace information back to its source?

**Stage 3: The Training Loop**

Training uses a technique called “[masked language modeling](https://huggingface.co/docs/transformers/en/tasks/masked_language_modeling)
12. [MASK\] on the mat” and tries to predict “sat.”

If it’s wrong, it adjusts its parameters slightly. This process repeats billions of times with different sentences.

The model has 1.76 trillion parameters. These are numbers that get adjusted during training. These parameters encode patterns about language, facts, reasoning, and more. Think of them as the “dials” that we talked about in Class 2, that get turned to tune the model’s understanding.

**Here’s what one training step might look like:**

Input: The cat \[MASK\] on the mat

Model predicts: runs (Probability: 0.15)

Correct answer: sat

Adjustment: Tweak 0.0000001% of 1.76 trillion parameters

Now imagine this happening 100 billion times, on different sentences, simultaneously across thousands of GPUs (we’ll get to GPUs soon, I promise), for 100 days straight.

But what happens when the model sees the same text, like “[Four Score and Seven Years Ago](https://www.abrahamlincolnonline.org/lincoln/speeches/gettysburg.htm)
13. [Fine-Tuning Demo in Colab](https://drive.google.com/file/d/1BHek-WTjEbt547CzMxM73WcrBq96OXAC/view?usp=sharing)
14. [a “bug” they’re working to fix](https://arxiv.org/html/2412.06370v1)
15. [more than 50 AI copyright infringement suits](https://copyrightalliance.org/ai-copyright-case-developments-2025/)
16. [Library Genesis](https://libgen.ac/)
17. [Books3](https://huggingface.co/datasets/stephenwalker/books3-labeled)
18. [Pirate Library Mirror](https://thenextweb.com/news/pirate-library-mirror-wants-to-preserve-human-knowledge-illegally)
19. [testified that while at OpenAI in 2019, he downloaded the Library Genesis dataset](https://www.nytimes.com/2025/09/05/technology/anthropic-settlement-copyright-ai.html)
20. [transformative](https://www.copyright.gov/fair-use/)
21. [1026, 373, 262, 1266, 286, 1661, 11, 340, 373, 262, 5290, 286, 1661, 986\]

##### ↓ PARAMETERS: 0.00001% adjustment to 1.76 trillion numbers

##### ↓ OUTPUT: It was the best of times, it was the worst of times...

But wait, says the NYT, if input equals output, where’s the transformation? The U.S. Copyright Office has weighed in with [some guidance](https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-3-Generative-AI-Training-Report-Pre-Publication-Version.pdf)
22. [traffic drops of 20–30% since AI tools became popular](https://www.bbc.com/news/articles/c0mlvryx0exo)

## Images in the article

*Listed, not copied: each image's address, its description and its caption as published. Not part of the fingerprint.*

1. [https://substackcdn.com/image/fetch/$s_!CqE9!,w_36,h_36,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg](https://substackcdn.com/image/fetch/$s_!CqE9!,w_36,h_36,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg). Description: Nita Farahany's avatar
2. [https://substackcdn.com/image/fetch/$s_!QLzp!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F303707cf-fd7c-4a71-9889-23520b3c3b2e_1024x608.png](https://substackcdn.com/image/fetch/$s_!QLzp!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F303707cf-fd7c-4a71-9889-23520b3c3b2e_1024x608.png)
3. [https://substackcdn.com/image/fetch/$s_!Vfan!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F5c487a19-a809-4531-b539-b4c49db0bb31_1024x608.png](https://substackcdn.com/image/fetch/$s_!Vfan!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F5c487a19-a809-4531-b539-b4c49db0bb31_1024x608.png)
4. [https://substackcdn.com/image/fetch/$s_!HmaY!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F4c18eaa7-e6c6-44b7-9cd8-10fbb9aa5e7e_560x132.png](https://substackcdn.com/image/fetch/$s_!HmaY!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F4c18eaa7-e6c6-44b7-9cd8-10fbb9aa5e7e_560x132.png)
5. [https://substackcdn.com/image/fetch/$s_!r_VJ!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fed82a6fa-38a3-43ff-969b-e480887a5b18_542x162.png](https://substackcdn.com/image/fetch/$s_!r_VJ!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fed82a6fa-38a3-43ff-969b-e480887a5b18_542x162.png)
6. [https://substackcdn.com/image/fetch/$s_!qjQR!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F867019e9-3a99-41c8-8f34-de390b4b6458_1024x608.png](https://substackcdn.com/image/fetch/$s_!qjQR!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F867019e9-3a99-41c8-8f34-de390b4b6458_1024x608.png)
7. [https://substackcdn.com/image/fetch/$s_!CqE9!,w_64,h_64,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg](https://substackcdn.com/image/fetch/$s_!CqE9!,w_64,h_64,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg). Description: User's avatar

## Change log

- **2026-11-14:** captured.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.
