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
<div style="max-width:auto; margin:auto;">
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <style>
      body { font-family: Arial; margin: 20px; }
      label {
        display: inline-flex;
        align-items: center;
        margin-bottom: 5px;
        gap: 8px;
        cursor: pointer;
      }
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
  </head>
  <body>

  <h2>Random Item Generator</h2>

  <div class="category-list">
    <strong>Select Sets by Rank</strong>
    <label><input type="radio" name="category" class="category" data-category="white"> White Belt</label>
    <label><input type="radio" name="category" class="category" data-category="yellow"> Yellow Belt</label>
    <label><input type="radio" name="category" class="category" data-category="blue"> Blue Belt</label>
    <label><input type="radio" name="category" class="category" data-category="red"> Red Belt</label>
    <label><input type="radio" name="category" class="category" data-category="brown"> Brown Belt</label>
    <label><input type="radio" name="category" class="category" data-category="dbn"> Dahn Bo Nim</label>
    <label><input type="radio" name="category" class="category" data-category="jkn"> Jo Kyo Nim</label>
    <label><input type="radio" name="category" class="category" data-category="ksn"> Kyo Sa Nim</label>
    <label><input type="radio" name="category" class="category" data-category="psbn"> Pu Sa Bum Nim</label>
  </div>

  <div class="item-list">
    <strong>or Select Specific Sets</strong>
    <label><input type="checkbox" class="item" data-limit="5" value="Sohn Ppae Ki"> Sohn Ppae Ki (5)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Ki Bohn Soo"> Ki Bohn Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="11" value="Sohn Mohk Soo"> Sohn Mohk Soo (11)</label>
    <label><input type="checkbox" class="item" data-limit="13" value="Eui Bohk Soo"> Eui Bohk Soo (13)</label>
    <label><input type="checkbox" class="item" data-limit="6" value="Ahn Sohn Mohk Soo"> Ahn Sohn Mohk Soo (6)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Maek Chi Ki"> Maek Chi Ki (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Maek Cha Ki"> Maek Cha Ki (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Joo Muhk Maga Ki Bohn Soo"> Joo Muhk Maga Ki Bohn Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="7" value="Joong Geup Sohn Mohk Soo"> Joong Geup Sohn Mohk Soo (7)</label>
    <label><input type="checkbox" class="item" data-limit="20" value="Ahp Eui Bohk Soo"> Ahp Eui Bohk Soo (20)</label>
    <label><input type="checkbox" class="item" data-limit="23" value="Dee Eui Bohk Soo"> Dee Eui Bohk Soo (23)</label>
    <label><input type="checkbox" class="item" data-limit="13" value="Kwahn Juhl Ki"> Kwahn Juhl Ki (13)</label>
    <label><input type="checkbox" class="item" data-limit="13" value="Too Ki"> Too Ki (13)</label>
    <label><input type="checkbox" class="item" data-limit="5" value="Mohk Joh Leu Ki"> Mohk Joh Leu Ki (5)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Bahn Too Ki"> Bahn Too Ki (10)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Yahng Sohn Mohk Soo"> Yahng Sohn Mohk Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Ssahng Soo"> Ssahng Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Dahn Doh Mahk Ki"> Dahn Doh Mahk Ki (15)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Ki Bohn Bohn"> Ki Bohn Bohn (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Gahk Doh Bub"> Gahk Doh Bub (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Juhn Hwahn Bub"> Juhn Hwahn Bub (10)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Goh Geup Sohn Mohk Soo"> Goh Geup Sohn Mohk Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Goh Geup Eui Bohk Soo"> Goh Geup Eui Bohk Soo (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Jah Ki"> Jah Ki (15)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Wah Ki"> Wah Ki (15)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Ee In Jeh Ahp Sool"> Ee In Jeh Ahp Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="20" value="Jahp Ki"> Jahp Ki (20)</label>
    <label><input type="checkbox" class="item" data-limit="15" value="Johk Bahng Uh Sool"> Johk Bahng Uh Sool (15)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Keun Dae Ryuhn"> Keun Dae Ryuhn (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Jee Ahp Sool"> Jee Ahp Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Yuhn Heng Sool"> Yuhn Heng Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Po Bahk Sool"> Po Bahk Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Jee Peng Ee Sool"> Jee Peng Ee Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Pyhung Soo"> Pyhung Soo (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Bu Chae Sool"> Bu Chae Sool (10)</label>
    <label><input type="checkbox" class="item" data-limit="10" value="Bahk Sool"> Bahk Sool (10)</label>
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
    const categoryMap = {
      white: ['Sohn Ppae Ki', 'Ki Bohn Soo'],
      yellow: ['white', 'Sohn Mohk Soo'],
      blue: ['yellow', 'Eui Bohk Soo'],
      red: ['blue', 'Ahn Sohn Mohk Soo', 'Maek Chi Ki'],
      brown: ['red', 'Maek Cha Ki', 'Joo Muhk Maga Ki Bohn Soo'],
      dbn: ['brown', 'Joong Geup Sohn Mohk Soo', 'Ahp Eui Bohk Soo', 'Dee Eui Bohk Soo', 'Kwahn Juhl Ki', 'Too Ki', 'Mohk Joh Leu Ki', 'Bahn Too Ki', 'Yahng Sohn Mohk Soo', 'Ssahng Soo', 'Dahn Doh Mahk Ki'],
      jkn: ['dbn', 'Ki Bohn Bohn', 'Gahk Doh Bub', 'Juhn Hwahn Bub', 'Goh Geup Sohn Mohk Soo', 'Goh Geup Eui Bohk Soo', 'Jah Ki', 'Wah Ki', 'Ee In Jeh Ahp Sool'],
      ksn: ['jkn', 'Jahp Ki', 'Johk Bahng Uh Sool', 'Keun Dae Ryuhn', 'Jee Ahp Sool', 'Yuhn Heng Sool', 'Po Bahk Sool'],
      psbn: ['ksn', 'Jee Peng Ee Sool', 'Pyhung Soo', 'Bu Chae Sool', 'Bahk Sool']
    };

    const itemLimits = {
      "Sohn Ppae Ki": 5,
      "Ki Bohn Soo": 15,
      "Sohn Mohk Soo": 11,
      "Eui Bohk Soo": 13,
      "Ahn Sohn Mohk Soo": 6,
      "Maek Chi Ki": 15,
      "Maek Cha Ki": 15,
      "Joo Muhk Maga Ki Bohn Soo": 15,
      "Joong Geup Sohn Mohk Soo": 7,
      "Ahp Eui Bohk Soo": 20,
      "Dee Eui Bohk Soo": 23,
      "Kwahn Juhl Ki": 13,
      "Too Ki": 13,
      "Mohk Joh Leu Ki": 5,
      "Bahn Too Ki": 10,
      "Yahng Sohn Mohk Soo": 15,
      "Ssahng Soo": 15,
      "Dahn Doh Mahk Ki": 15,
      "Ki Bohn Bohn": 10,
      "Gahk Doh Bub": 10,
      "Juhn Hwahn Bub": 10,
      "Goh Geup Sohn Mohk Soo": 15,
      "Goh Geup Eui Bohk Soo": 15,
      "Jah Ki": 15,
      "Wah Ki": 15,
      "Ee In Jeh Ahp Sool": 10,
      "Jahp Ki": 20,
      "Johk Bahng Uh Sool": 15,
      "Keun Dae Ryuhn": 10,
      "Jee Ahp Sool": 10,
      "Yuhn Heng Sool": 10,
      "Po Bahk Sool": 10,
      "Jee Peng Ee Sool": 10,
      "Pyhung Soo": 10,
      "Bu Chae Sool": 10,
      "Bahk Sool": 10
    };

    let selectedItems = [];
    let currentList = [];
    let currentIndex = 0;
    let perItemMode = false;
    let perItemCount = 1;
    let randomOrder = false;

    function togglePerItemInput() {
      const checked = document.getElementById('perItemMode').checked;
      perItemMode = checked;
      document.getElementById('perItemInputs').style.display = checked ? 'block' : 'none';
      document.getElementById('singleCountInput').style.display = checked ? 'none' : 'block';
    }

    function startGeneration() {
      selectedItems = [];
      currentList = [];
      currentIndex = 0;

      const checkedCategory = document.querySelector('input[name="category"]:checked');
      if (checkedCategory) {
        const cat = checkedCategory.dataset.category;
        selectedItems = gatherCategoryItems(cat);
      } else {
        // get checked checkboxes
        const checkedBoxes = document.querySelectorAll('input.item:checked');
        checkedBoxes.forEach(cb => {
          selectedItems.push(cb.value);
        });
      }

      if (selectedItems.length === 0) {
        alert('Please select at least one category or item.');
        return;
      }

      perItemCount = perItemMode ? parseInt(document.getElementById('perItemCount').value) : parseInt(document.getElementById('numberToGenerate').value);
      randomOrder = document.getElementById('randomOrder').checked;

      currentList = buildList(selectedItems, perItemCount);

      if (randomOrder) {
        currentList = shuffleArray(currentList);
      }

      if (currentList.length === 0) {
        alert('No items to generate.');
        return;
      }

      currentIndex = 0;
      displayCurrentItem();
      document.getElementById('feedback-buttons').style.display = 'block';
      document.getElementById('summary').innerHTML = '';
    }

    function gatherCategoryItems(cat) {
      let result = [];
      if (categoryMap[cat]) {
        categoryMap[cat].forEach(subCat => {
          if (categoryMap[subCat]) {
            result = result.concat(gatherCategoryItems(subCat));
          } else {
            result.push(subCat);
          }
        });
      }
      return result;
    }

    function buildList(items, count) {
      let list = [];
      items.forEach(item => {
        let limit = itemLimits[item] || 10;
        let num = perItemMode ? Math.min(count, limit) : limit;
        for (let i = 1; i <= num; i++) {
          list.push(`${item} #${i}`);
        }
      });
      return list;
    }

    function displayCurrentItem() {
      if (currentIndex < currentList.length) {
        document.getElementById('output').textContent = currentList[currentIndex];
      } else {
        document.getElementById('output').textContent = 'No more items.';
        document.getElementById('feedback-buttons').style.display = 'none';
      }
    }

    function rateItem(type) {
      const summary = document.getElementById('summary');
      if (currentIndex < currentList.length) {
        const span = document.createElement('span');
        span.textContent = currentList[currentIndex];
        span.className = type === 'correct' ? 'correct' : 'incorrect';
        summary.appendChild(span);
        summary.appendChild(document.createElement('br'));
        currentIndex++;
        displayCurrentItem();
      }
    }

    function shuffleArray(array) {
      for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
      }
      return array;
    }
  </script>

  </body>
  </html>
</div>
{% endraw %}
