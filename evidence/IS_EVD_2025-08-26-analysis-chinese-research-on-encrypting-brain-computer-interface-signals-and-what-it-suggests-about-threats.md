---
id: IS-EVD-2025-08-26-ANALYSIS-CHINESE-RESEARCH-ON-ENCRYPTING-BRAIN-COMPUTER-INTERFACE-SIGNALS-AND-WHAT-IT-SUGGESTS-ABOUT-THREATS
slug: 2025-08-26-analysis-chinese-research-on-encrypting-brain-computer-interface-signals-and-what-it-suggests-about-threats
title: "Evidence: Chinese research on encrypting brain-computer interface signals, and what it suggests about threats"
collection: evidence
doc_type: evidence-capture
news_id: IS-NEWS-2025-08-26-ANALYSIS-CHINESE-RESEARCH-ON-ENCRYPTING-BRAIN-COMPUTER-INTERFACE-SIGNALS-AND-WHAT-IT-SUGGESTS-ABOUT-THREATS
news_file: news/IS_NEWS_2025-08-26-analysis-chinese-research-on-encrypting-brain-computer-interface-signals-and-what-it-suggests-about-threats.md
publisher: "Thinking Freely (Substack)"
url: https://nitafarahany.substack.com/p/when-neural-signals-need-military
archived_url: https://web.archive.org/web/20261111072221/https://nitafarahany.substack.com/p/when-neural-signals-need-military
captured: 2026-11-14T02:53:18Z
capture_status: captured
http_status: 200
article_author: "Nita Farahany"
published: 2025-08-26
public_domain: false
text_sha256: 228e007c30fb25a30caa6922b77bdfbf62beaf63a6add12034694a627d115f05
current_sha256: 228e007c30fb25a30caa6922b77bdfbf62beaf63a6add12034694a627d115f05
last_checked: 2026-11-14
raw_record: "Supabase news_snapshots, slug 2025-08-26-analysis-chinese-research-on-encrypting-brain-computer-interface-signals-and-what-it-suggests-about-threats, page SHA-256 f7207b3b169aae29fcfcdb9db3ffcfc83dd7b3e0430d675a1e86fbd8bd677eb5"
collected_by: "Sean C. Harris, invisibleships.com"
copyright: "The article belongs to Thinking Freely (Substack). Captured as evidence of the page on 2026-11-14; not republished on invisibleships.com."
disclaimer: meta/IS_META_terms.md
---
# Evidence: Chinese research on encrypting brain-computer interface signals, and what it suggests about threats

**Captured 2026-11-14 as evidence of the page as it appeared that day. All rights belong to Thinking Freely (Substack).** This archive did not write it and takes no credit for it. Read the original at [https://nitafarahany.substack.com/p/when-neural-signals-need-military](https://nitafarahany.substack.com/p/when-neural-signals-need-military).

- **Original:** [https://nitafarahany.substack.com/p/when-neural-signals-need-military](https://nitafarahany.substack.com/p/when-neural-signals-need-military)
- **Written by:** Nita Farahany
- **Published (as stated by the source):** 2025-08-26
- **Internet Archive copy:** [https://web.archive.org/web/20261111072221/https://nitafarahany.substack.com/p/when-neural-signals-need-military](https://web.archive.org/web/20261111072221/https://nitafarahany.substack.com/p/when-neural-signals-need-military)
- **This archive's summary:** `news/IS_NEWS_2025-08-26-analysis-chinese-research-on-encrypting-brain-computer-interface-signals-and-what-it-suggests-about-threats.md`
- **Collected by:** Sean C. Harris, invisibleships.com. Written by and belongs to Thinking Freely (Substack).
- **Fingerprint (SHA-256 of the captured text):** `228e007c30fb25a30caa6922b77bdfbf62beaf63a6add12034694a627d115f05`
- **Full page as fetched:** kept as the raw record in this archive's database (`news_snapshots`, SHA-256 `f7207b3b169aae29fcfcdb9db3ffcfc83dd7b3e0430d675a1e86fbd8bd677eb5`).

## Captured text

*A new paper from Chinese scientists demonstrates sophisticated encryption for brain-computer interface devices. But it raises more questions than it answers.*

If you’ve been following along, or read my book, *[The Battle for Your Brain](https://www.nitafarahany.com/the-battle-for-your-brain)*, you know what’s coming. Neural interface technology that may one day replace your brain or keyboard to let you control your devices with your thoughts. But how secure are those brain signals as they travel from your head to your smartphone? And what level of security would you want to protect them? The same security that protects your bank account? Or something even stronger, like what is used to protect military communications?

Based on research just published in *[Nature Communications](https://www.nature.com/articles/s41467-025-63326-0)*, I’m guessing China wants the latter. Brain-computer interface devices that can withstand nation-state hackers armed with sophisticated surveillance equipment. The paper describes technology that sounds kind of like science fiction (which I’m an avid reader of), making me wonder what kind of future China is preparing for. And whether we should be preparing for that kind of a future, too.

**What They Actually Built**

First things first, let’s talk about what the researchers actually did, because it’s genuinely innovative, regardless of how they plan to use it.

It involved two different systems. A headset (the brain-computer interface device), with four LED lights that flash at specified frequencies (7 Hz, 8.5 Hz, 10 Hz, and 11.5 Hz) to trigger steady-state visually evoked potentials (SSVEPs). In plain terms, when you focus on one of the lights wearing the device, your brain signals begins to sync up to the rhythm of the flashing. Their convolutional neural network (CNN) classification model could decipher which light a participant was looking at from their brain signals with about a 97% accuracy.

The second part of the system is particularly interesting. Behind those LEDs sits a kind of smart wall (a metasurface—a grid of 32×32 elements, each containing two PIN diodes (SMP1320-079LF from SKYWORKS) that can switch states at 6.9 GHz) made up of 1,024 tiny switches, that can flip on and off incredibly fast (\~7 billion times per second!). This creates what the researchers call “harmonic-encrypted beams,” or electromagnetic signals that split information into multiple ciphertexts transmitted at different frequencies (+1st and -1st harmonics) to different spatial locations (θ = -15° and θ = +30°). To decipher that into plain English, the system doesn’t just send your brain signal command as is, but scrambles the information and splits it into multiple pieces, where one piece of gets beamed to the left, another to the right at another angle, and both are transmitted at slightly different frequencies.

Security wise, the system worked well. Unauthorized listeners ended up with a 50%-bit error rate (in other words, they just intercepted random noise), while the authorized receivers got clear signals.

**Is This Overkill?**

What puzzles me about the paper is that the entire system they describe transmits data at 0.25 bits per second, which is only about one letter every 32 seconds. That’s not a technological limitation of BCIs, which have now well exceeded that rate of data/character transmission. Which means their system is really really slow, and on top of that likely incredibly expensive to build and implement. All against the backdrop that standard encryption (like AES-256, a strong symmetric-key encryption standard) currently protects everything from your credit card transactions to classified documents at a fraction of the cost and complexity.

So why build something so elaborate?

It may be because BCIs have some unique security challenges beyond what traditional encryption addresses. Regular encryption protects the data itself, but researchers have shown you can  [steal information from BCIs](https://www.usenix.org/conference/usenixsecurity12/technical-sessions/presentation/martinovic) by intercepting the electromagnetic signals they emit, and this new metasurface system can protect against that kind of surveillance that software encryption alone can’t.

But still, it made me wonder… who exactly are these researchers worried about listening in on brain signals? This level of security suggests they’re concerned about sophisticated adversaries with advanced surveillance capabilities. You know, the kind nation-states have.

**Follow the Money (and the Institutions)**

A little digging revealed some interesting context.

## Links found in the captured text

*Every link in the article, in order. The sources a reporter linked are part of the record.*

1. [The Battle for Your Brain](https://www.nitafarahany.com/the-battle-for-your-brain)
2. [Nature Communications](https://www.nature.com/articles/s41467-025-63326-0)
3. [steal information from BCIs](https://www.usenix.org/conference/usenixsecurity12/technical-sessions/presentation/martinovic)

## Images in the article

*Listed, not copied: each image's address, its description and its caption as published. Not part of the fingerprint.*

1. [https://substackcdn.com/image/fetch/$s_!CqE9!,w_36,h_36,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg](https://substackcdn.com/image/fetch/$s_!CqE9!,w_36,h_36,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg). Description: Nita Farahany's avatar
2. [https://substackcdn.com/image/fetch/$s_!6pH2!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Ff1e3b806-f3af-4459-8c47-941c1d2d4840_920x918.png](https://substackcdn.com/image/fetch/$s_!6pH2!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Ff1e3b806-f3af-4459-8c47-941c1d2d4840_920x918.png). Description: A diagram of a diagram of a diagram AI-generated content may be incorrect.
3. [https://substackcdn.com/image/fetch/$s_!CqE9!,w_64,h_64,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg](https://substackcdn.com/image/fetch/$s_!CqE9!,w_64,h_64,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6a572916-55cc-4b3c-aaf2-e48efdd0532b_4480x6720.jpeg). Description: User's avatar

## Change log

- **2026-11-14:** captured.

---

## Critical Disclaimer on Transcripts and Accusations

Transcripts and statements recorded in this archive are external communications and do NOT represent the author's beliefs, views, or intent. Nothing here accuses, blames, or alleges malfeasance by any named person, company, or government body, and all of this information requires independent verification.

The full Critical Disclaimer, copyright and terms are in meta/IS_META_terms.md, and at https://www.invisibleships.com/disclaimer.
