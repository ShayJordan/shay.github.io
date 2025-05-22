---
permalink: /ksw-technique-tester/
title: "Kuk Sool Won Technique Tester"
excerpt: "A random generator for Kuk Sool Won self-defense techniques."
header:
  overlay_image: home.JPG
  overlay_filter: rgba(51, 51, 90, 0.75)
author_profile: true
og_image: og_image.png
---
LaTeX Files
------
**Important!** In order to use the `.tex` files linked below, you must also download the associated `.cls` file and either put it in the same folder as the `.tex` file, or in your TeX system files.
{: .notice}


{% raw %}
<div style="max-width:auto; margin:auto; font-family: Arial; margin: 20px;">
  <style scoped>
    label { display: inline-flex; align-items: center; margin-bottom: 5px; gap: 6px; }
    .item-list, .category-list { margin-bottom: 20px; }
    #output {
      font-size: 1.8em;
      font-weight: bold;
      margin: 30px 0;
      text-align: center;
      min-height: 40px;
    }
    #feedback-buttons button {
      font-size: 3em;
      padding: 20px 30px;
      margin: 0 20px;
      cursor: pointer;
    }
    #start-button {
      font-size: 1.5em;
      padding: 15px 30px;
      cursor: pointer;
    }
    #summary {
      margin-top: 30px;
      font-size: 1.2em;
    }
    .correct { color: green; }
    .incorrect { color: red; }
  </style>

  <h2>Random Item Generator</h2>

  <div class="category-list">
    <strong>Select Sets by Rank</strong><br>
    <!-- category checkboxes -->
  </div>

  <div class="item-list">
    <strong>or Select Specific Sets</strong><br>
    <!-- item checkboxes -->
  </div>

  <label>
    <input type="checkbox" id="perItemMode" onchange="togglePerItemInput()"> Generate specific number of techniques per set
  </label>
  <div id="perItemInputs" style="display: none;">
    <label>How many techniques per set?
      <input type="number" id="perItemCount" min="1" value="1">
    </label>
    <label>
      <input type="checkbox" id="randomOrder"> Randomise item order
    </label>
  </div>

  <div id="singleCountInput">
    <label for="numberToGenerate">How many techniques?</label>
    <input type="number" id="numberToGenerate" min="1" value="1">
  </div>

  <br>
  <button id="start-button" onclick="startGeneration()">Start</button>

  <div id="output"></div>

  <div id="feedback-buttons" style="text-align: center; display: none;">
    <button onclick="rateItem('correct')">👍</button>
    <button onclick="rateItem('incorrect')">👎</button>
  </div>

  <div id="summary"></div>

  <script>
    // JavaScript logic from your original code goes here unchanged.
  </script>
</div>
{% endraw %}