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
    display: inline-block;
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
  <strong>Choose a rank category:</strong><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="white">White</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="yellow">Yellow</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="blue">Blue</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="red">Red</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="brown">Brown</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="dbn">DBN</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="jkn">JKN</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="ksn">KSN</label><br>
  <label class="inline-label"><input type="radio" name="category" class="category" data-category="psbn">PSBN</label><br>
</div>

<div class="form-section">
  <strong>Or choose individual sets:</strong><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Sohn Ppae Ki" data-limit="10">Sohn Ppae Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ki Bohn Soo" data-limit="15">Ki Bohn Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Sohn Mohk Soo" data-limit="14">Sohn Mohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Eui Bohk Soo" data-limit="12">Eui Bohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ahn Sohn Mohk Soo" data-limit="8">Ahn Sohn Mohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Maek Chi Ki" data-limit="15">Maek Chi Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Maek Cha Ki" data-limit="10">Maek Cha Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Joo Muhk Maga Ki Bohn Soo" data-limit="10">Joo Muhk Maga Ki Bohn Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Joong Geup Sohn Mohk Soo" data-limit="10">Joong Geup Sohn Mohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ahp Eui Bohk Soo" data-limit="10">Ahp Eui Bohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Dee Eui Bohk Soo" data-limit="10">Dee Eui Bohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Kwahn Juhl Ki" data-limit="10">Kwahn Juhl Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Too Ki" data-limit="10">Too Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Mohk Joh Leu Ki" data-limit="10">Mohk Joh Leu Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Bahn Too Ki" data-limit="10">Bahn Too Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Yahng Sohn Mohk Soo" data-limit="10">Yahng Sohn Mohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ssahng Soo" data-limit="10">Ssahng Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Dahn Doh Mahk Ki" data-limit="10">Dahn Doh Mahk Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ki Bohn Bohn" data-limit="10">Ki Bohn Bohn</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Gahk Doh Bub" data-limit="10">Gahk Doh Bub</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Juhn Hwahn Bub" data-limit="10">Juhn Hwahn Bub</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Goh Geup Sohn Mohk Soo" data-limit="10">Goh Geup Sohn Mohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Goh Geup Eui Bohk Soo" data-limit="10">Goh Geup Eui Bohk Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Jah Ki" data-limit="10">Jah Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Wah Ki" data-limit="10">Wah Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Ee In Jeh Ahp Sool" data-limit="10">Ee In Jeh Ahp Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Jahp Ki" data-limit="10">Jahp Ki</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Johk Bahng Uh Sool" data-limit="10">Johk Bahng Uh Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Keun Dae Ryuhn" data-limit="10">Keun Dae Ryuhn</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Jee Ahp Sool" data-limit="10">Jee Ahp Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Yuhn Heng Sool" data-limit="10">Yuhn Heng Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Po Bahk Sool" data-limit="10">Po Bahk Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Jee Peng Ee Sool" data-limit="10">Jee Peng Ee Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Pyhung Soo" data-limit="10">Pyhung Soo</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Bu Chae Sool" data-limit="10">Bu Chae Sool</label><br>
  <label class="inline-label"><input type="checkbox" class="item" value="Bahk Sool" data-limit="10">Bahk Sool</label><br>
</div>

<div class="form-section">
  <label><input type="checkbox" id="perItemMode" onclick="togglePerItemInput()"> Generate specific number of techniques per set</label><br>
  <div id="singleCountInput">
    <label>Number of techniques total: <input type="number" id="numberToGenerate" min="1" value="5"></label>
  </div>
  <div id="perItemInputs" style="display:none;">
    <label>Number per selected set: <input type="number" id="perItemCount" min="1" value="2"></label>
  </div>
  <label><input type="checkbox" id="randomOrder" checked> Randomise order</label><br><br>
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

  let currentList = [];
  let currentIndex = 0;

  function expandCategory(cat) {
    const expanded = [];
    (function recurse(key) {
      if (categoryMap[key]) {
        categoryMap[key].forEach(sub => recurse(sub));
      } else {
        expanded.push(key);
      }
    })(cat);
    return expanded;
  }

  function gatherSelectedItems() {
    const cat = document.querySelector('input[name="category"]:checked');
    if (cat) {
      return expandCategory(cat.dataset.category);
    }
    return Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value);
  }

  function buildTechniqueList(sets, perSet, perMode) {
    const list = [];
    sets.forEach(setName => {
      const checkbox = document.querySelector(`.item[value="${setName}"]`);
      const limit = parseInt(checkbox?.dataset.limit || 10);
      const count = perMode ? Math.min(perSet, limit) : 1;
      for (let i = 1; i <= count; i++) {
        list.push(`${setName} #${i}`);
      }
    });
    return list;
  }

  function shuffle(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  }

  function displayNext() {
    const output = document.getElementById('output');
    if (currentIndex < currentList.length) {
      output.textContent = currentList[currentIndex];
      document.getElementById('feedback-buttons').style.display = 'block';
    } else {
      output.textContent = 'All done!';
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
    if (!perMode && currentList.length > count) {
      currentList = shuffle(currentList).slice(0, count);
    } else if (document.getElementById('randomOrder').checked) {
      currentList = shuffle(currentList);
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

  function togglePerItemInput() {
    const isPer = document.getElementById('perItemMode').checked;
    document.getElementById('perItemInputs').style.display = isPer ? 'block' : 'none';
    document.getElementById('singleCountInput').style.display = isPer ? 'none' : 'block';
  }
</script>
