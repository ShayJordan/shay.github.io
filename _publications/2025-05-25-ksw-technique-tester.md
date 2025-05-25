---
title: "Kuk Sool Won Technique Tester"
collection: projects
permalink: /projects/2025-05-25-ksw-technique-tester/
excerpt: 'This personal project involved building a dynamic technique tester using HTML, CSS, and JavaScript to help martial arts students review and randomise techniques, with built-in feedback and scoring features.'
date: 2025-05-23
---
This personal project involved building a dynamic, browser-based Kuk Sool Won (martial arts) self-defence technique tester using HTML, CSS, and JavaScript. Preparing for advanced black belt testing requires memorising and practising hundreds of self-defence techniques — no small task. At the time of creating the resource, I was in the process of testing for my fourth degree black belt after [twenty years of training](/posts/2024/12/twenty-years-of-kuk-sool-part-1/), at which stage I was required to know 444 self-defence techniques, alongside everything else in Kuk Sool's vast curriculum. 

Over the years, I created various tools to help, including a spreadsheet randomiser and a Siri Shortcut for iOS. Whilst functional, these were limited by platform restrictions, or a lack of flexibility. Wanting something better, I set out to build a more accessible and efficient solution. 

For the first time, I collaborated with AI to assist in development — a new experience that challenged me to clearly articulate requirements, troubleshoot effectively, and maintain the integrity of the resource throughout. It became a rewarding exercise in both technical problem-solving and communication.

<div style="text-align: center;">
  <a href="/ksw-technique-tester/" class="btn btn--info">Use the resource here</a>
</div>

<br></br>

This resource will continue to grow as I add new features based on my own reflections and feedback from other Kuk Sool practitioners. When I shared the first public version on 23 May 2025, it included the following features:

* **Rank-Based Set Selection**  
Quickly select all relevant technique sets based on belt rank (White Belt, Yellow Belt, ..., up to Fourth Degree Black Belt / Sa Bum Nim), including inherited sets from previous ranks.

* **Manual Set Selection**  
Choose specific technique sets manually from a comprehensive list, with visual indicators of how many techniques are in each.

* **Multiple Generation Modes**  
  *  Generate a specific number of random techniques from across all selected sets
  *  Generate a fixed number of techniques per selected set.

* **Randomisation Options**  
  * Randomise the order of sets (per-set mode)
  * Randomise the order of techniques within each set (full mode).

* **Step-by-Step Display**  
Techniques are shown one at a time with large, centred text to support focused solo practice.

* **Feedback System**  
Users rate each technique as “correct” or “incorrect” using intuitive thumbs-up/down buttons.

* **End-of-Session Summary**  
A clear summary appears at the end showing which techniques were marked correct/incorrect, using coloured text.

* **Fully Browser-Based & Mobile-Friendly**  
No installation required — works seamlessly on desktop and mobile.

On 25 May 2025, several new features were added:

* **Score Box**  
I added a colour-coded score box to the end-of-session summary that shows users' overall score as a percentage, as determined by their use of the intuitive thumbs-up/down button feedback system. This was a suggestion from someone who used the resource.

* **Additional Generation Methods**  
I added a feature to go through every technique in the selected sets, with the option to show them in order or shuffled. This helps users identify personal weak areas in their syllabus. I included it because I knew it would be useful for my own training too.

* **Better Randomisation**  
The original resource didn’t keep track of which techniques had already been shown, so users could get the same one multiple times while missing others completely. To fix this, I added a feature called *tiered repetition control*. This ensures that every technique is shown once before any repeats happen, and that no technique appears a third time until all others have been shown twice — and so on. I added this feature because I personally wanted more balanced practise.

* **Visual Improvements**  
I added ✅ and ❌ emojis to show which answers were correct or incorrect in the end-of-session summary. This made things clearer and more accessible, especially for users who might have trouble seeing green and red text colours used in the original version.

<div style="text-align: center;">
  <a href="/ksw-technique-tester/" class="btn btn--info">Use the resource here</a>
</div>