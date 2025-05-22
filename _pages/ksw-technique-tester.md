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
<style>
  .correct {
    color: green;
    font-weight: bold;
  }

  .incorrect {
    color: red;
    font-weight: bold;
  }

  .inline-label {
    display: flex;
    align-items: center;
    margin-bottom: 5px;
  }

  #output {
    margin: 20px 0;
    font-size: 1.5em;
    font-weight: bold;
  }

  #feedback-buttons button {
    font-size: 1.2em;
    margin-right: 10px;
    padding: 8px 12px;
  }

  #summary {
    margin-top: 20px;
    font-size: 1.1em;
  }

  input[type="radio"],
  input[type="checkbox"] {
    margin-right: 8px;
  }

  .form-section {
    margin-bottom: 20px;
  }
</style>

<div class="form-section">
  <strong>Select Sets by Rank</strong><br><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="white">White Belt</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="yellow">Yellow Belt</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="blue">Blue Belt</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="red">Red Belt</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="brown">Brown Belt</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="dbn">Dahn Bo Nim</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="jkn">Jo Kyo Nim</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="ksn">Kyo Sa Nim</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="psbn">Pu Sa Bum Nim</label><br>
</div>

<div class="form-section">
  <strong>Or Select Specific Sets</strong><br><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="5" value="Sohn Ppae Ki"> Sohn Ppae Ki (5)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Ki Bohn Soo"> Ki Bohn Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="11" value="Sohn Mohk Soo"> Sohn Mohk Soo (11)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="13" value="Eui Bohk Soo"> Eui Bohk Soo (13)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="6" value="Ahn Sohn Mohk Soo"> Ahn Sohn Mohk Soo (6)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Maek Chi Ki"> Maek Chi Ki (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Maek Cha Ki"> Maek Cha Ki (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Joo Muhk Maga Ki Bohn Soo"> Joo Muhk Maga Ki Bohn Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="7" value="Joong Geup Sohn Mohk Soo"> Joong Geup Sohn Mohk Soo (7)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="20" value="Ahp Eui Bohk Soo"> Ahp Eui Bohk Soo (20)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="23" value="Dee Eui Bohk Soo"> Dee Eui Bohk Soo (23)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="13" value="Kwahn Juhl Ki"> Kwahn Juhl Ki (13)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="13" value="Too Ki"> Too Ki (13)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="5" value="Mohk Joh Leu Ki"> Mohk Joh Leu Ki (5)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Bahn Too Ki"> Bahn Too Ki (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Yahng Sohn Mohk Soo"> Yahng Sohn Mohk Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Ssahng Soo"> Ssahng Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Dahn Doh Mahk Ki"> Dahn Doh Mahk Ki (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Ki Bohn Bohn"> Ki Bohn Bohn (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Gahk Doh Bub"> Gahk Doh Bub (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Juhn Hwahn Bub"> Juhn Hwahn Bub (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Goh Geup Sohn Mohk Soo"> Goh Geup Sohn Mohk Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Goh Geup Eui Bohk Soo"> Goh Geup Eui Bohk Soo (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Jah Ki"> Jah Ki (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Wah Ki"> Wah Ki (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Ee In Jeh Ahp Sool"> Ee In Jeh Ahp Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="20" value="Jahp Ki"> Jahp Ki (20)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="15" value="Johk Bahng Uh Sool"> Johk Bahng Uh Sool (15)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Keun Dae Ryuhn"> Keun Dae Ryuhn (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Jee Ahp Sool"> Jee Ahp Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Yuhn Heng Sool"> Yuhn Heng Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Po Bahk Sool"> Po Bahk Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Jee Peng Ee Sool"> Jee Peng Ee Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Pyhung Soo"> Pyhung Soo (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Bu Chae Sool"> Bu Chae Sool (10)</label><br>
  <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Bahk Sool"> Bahk Sool (10)</label><br>
</div>

<div class="form-section">
  <label class="inline-label"><input type="checkbox" id="perItemMode" onclick="togglePerItemInput()"> Generate specific number of techniques per set</label><br>
  <div id="singleCountInput">
    <label>How many techniques in total?<input type="number" id="numberToGenerate" min="1" value="5"></label>
  </div>
  <div id="perItemInputs" style="display:none;">
    <label>How many techniques per selected set? <input type="number" id="perItemCount" min="1" value="2"></label>
  </div>
  <label class="inline-label"><input type="checkbox" id="randomOrder" checked> Randomise order</label><br><br>
  <button onclick="startGeneration()">Start</button>
</div>

<div id="output"></div>

<div id="feedback-buttons" style="display: none;">
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

  function expandCategory(cat, visited = new Set()) {
    if (visited.has(cat)) return [];
    visited.add(cat);
    if (!categoryMap[cat]) return [cat];
    return categoryMap[cat].flatMap(sub => expandCategory(sub, visited));
  }

  function togglePerItemInput() {
    const isPer = document.getElementById('perItemMode').checked;
    document.getElementById('perItemInputs').style.display = isPer ? 'block' : 'none';
    document.getElementById('singleCountInput').style.display = isPer ? 'none' : 'block';
  }

  function gatherSelectedItems() {
    const cat = document.querySelector('input[name="category"]:checked');
    if (cat) return expandCategory(cat.dataset.category);
    return Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value);
  }

  function buildTechniqueList(sets, count, perMode) {
    const list = [];

    if (perMode) {
      sets.forEach(setName => {
        const checkbox = document.querySelector(`.item[value="${setName}"]`);
        const limit = parseInt(checkbox?.dataset.limit || '10');
        for (let i = 0; i < count; i++) {
          const n = Math.floor(Math.random() * limit) + 1;
          list.push(`${setName}: ${n}`);
        }
      });
    } else {
      const pool = sets.map(setName => {
        const checkbox = document.querySelector(`.item[value="${setName}"]`);
        return {
          setName,
          limit: parseInt(checkbox?.dataset.limit || '10')
        };
      });

      for (let i = 0; i < count; i++) {
        const entry = pool[Math.floor(Math.random() * pool.length)];
        const n = Math.floor(Math.random() * entry.limit) + 1;
        list.push(`${entry.setName}: ${n}`);
      }
    }

    return list;
  }

  function shuffle(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  }

  let currentList = [];
  let currentIndex = 0;

  function displayNext() {
    const output = document.getElementById('output');
    if (currentIndex < currentList.length) {
      output.textContent = currentList[currentIndex];
      document.getElementById('feedback-buttons').style.display = 'block';
    } else {
      output.textContent = 'All items rated.';
      document.getElementById('feedback-buttons').style.display = 'none';
    }
  }

  function startGeneration() {
    currentIndex = 0;
    document.getElementById('summary').innerHTML = '';

    const selectedItems = gatherSelectedItems();
    if (!selectedItems.length) {
      alert("Select at least one item or category.");
      return;
    }

    const perMode = document.getElementById('perItemMode').checked;
    const count = parseInt(document.getElementById(perMode ? 'perItemCount' : 'numberToGenerate').value || '1');
    if (isNaN(count) || count < 1) {
      alert("Enter a valid number.");
      return;
    }

    currentList = buildTechniqueList(selectedItems, count, perMode);
    if (!perMode && document.getElementById('randomOrder').checked) {
      shuffle(currentList);
    }

    displayNext();
  }

  function rateItem(feedback) {
    const summary = document.getElementById('summary');
    const span = document.createElement('span');
    span.textContent = currentList[currentIndex];
    span.className = feedback === 'correct' ? 'correct' : 'incorrect';
    summary.appendChild(span);
    summary.appendChild(document.createElement('br'));

    currentIndex++;
    displayNext();
  }

  window.addEventListener('load', function () {
    document.querySelectorAll('.category').forEach(radio => {
      radio.addEventListener('change', () => {
        const sets = expandCategory(radio.dataset.category);
        document.querySelectorAll('.item').forEach(cb => {
          cb.checked = sets.includes(cb.value);
        });
      });
    });

    document.querySelectorAll('.item').forEach(cb => {
      cb.addEventListener('change', () => {
        document.querySelectorAll('.category').forEach(r => r.checked = false);
      });
    });

    document.getElementById('perItemMode').addEventListener('change', togglePerItemInput);

    togglePerItemInput();
  });
</script>
{% endraw %}