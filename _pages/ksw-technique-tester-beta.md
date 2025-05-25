---
permalink: /ksw-technique-tester-beta/
title: "Kuk Sool Technique Tester BETA"
excerpt: "A random generator for Kuk Sool Won self-defense techniques."
header:
  overlay_image: home.JPG
  overlay_filter: rgba(51, 51, 90, 0.75)
author_profile: false
og_image: og_image.png
sitemap: false
---
Select your rank to be tested on all technique sets up to your next grade, or manually select which sets you wish to be tested from.

{% raw %}
<style>
  .correct {
    display: block;
    #color: green;
    font-weight: bold;
    #text-align: left;
    padding-left: 10px;
  }

  .incorrect {
    display: block;
    #color: red;
    font-weight: bold;
    #text-align: right;
    padding-left: 10px;
  }
  
  .score-box {
    margin-top: 20px;
    margin-bottom: 40px;
    padding: 15px;
    font-size: 1.5em;
    font-weight: bold;
    text-align: center;
    border-radius: 8px;
  }

  /* Color-coded classes */
  .score-high {
    background-color: #d4edda;
    color: #155724;
    border: 2px solid #c3e6cb
  }

  .score-medium {
    background-color: #fff3cd;
    color: #856404;
    border: 2px solid #ffeeba;
  }

  .score-low {
    background-color: #f8d7da;
    color: #721c24;
    border: 2px solid #f5c6cb;
  }

  .inline-label {
    display: flex;
    align-items: center;
    margin-bottom: 5px;
  }

  #output {
    margin: 30px 0;
    font-size: 2.2em;
    font-weight: bold;
    text-align: center;
    min-height: 40px;
  }

  #feedback-buttons {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
    margin: 30px auto;
    width: 100%;
    max-width: 100%;
    box-sizing: border-box;
    display: none;
  }

  #feedback-buttons button {
    font-size: 3em;
    padding: 20px 30px;
    cursor: pointer;
  }

  #summary {
    margin-top: 30px;
    font-size: 1.2em;
    display: none;
  }

  input[type="radio"],
  input[type="checkbox"] {
    margin-right: 8px;
  }

  #start-button {
    display: block;
    font-size: 1.4em;
    padding: 15px 30px;
    cursor: pointer;
    margin: 20px auto;
  }

  .form-section {
    margin-bottom: 20px;
  }

  .checkbox-grid {
    column-count: 2;
    column-gap: 40px;
    max-width: 100%;
  }

  .checkbox-grid label {
    display: flex;
    align-items: center;
    break-inside: avoid;
    margin-bottom: 6px;
  }

  @media screen and (max-width: 600px) {
    .checkbox-grid {
      column-count: 1;
    }
  }
</style>

<div class="form-section">
  <label for="categorySelect"><strong>Select Sets by Rank</strong></label><br>
  <select id="categorySelect">
    <option value="">-- Select a Rank --</option>
    <option value="white">White Belt</option>
    <option value="yellow">Yellow Belt</option>
    <option value="blue">Blue Belt</option>
    <option value="red">Red Belt</option>
    <option value="brown">Brown Belt</option>
    <option value="dbn">Dahn Bo Nim</option>
    <option value="jkn">Jo Kyo Nim</option>
    <option value="ksn">Kyo Sa Nim</option>
    <option value="psbn">Pu Sa Bum Nim</option>
    <option value="sbn">Sa Bum Nim</option>
  </select>
</div>

<div class="form-section">
  <strong>Or Select Specific Sets</strong><br><br>
  <div class="checkbox-grid">
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
      <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Ssahng Jee Ahp Sool"> Ssahng Jee Ahp Sool (10)</label><br>
      <label class="inline-label"><input type="checkbox" class="item" data-limit="10" value="Chahl Sah Jahng"> Chahl Sah Jahng (10)</label><br>
      <label class="inline-label"><input type="checkbox" class="item" data-limit="5" value="Bahng Wong Ki"> Bahng Wong Ki (5)</label><br>
  </div>
</div>

<div class="form-section">
  <label class="inline-label">
    <input type="checkbox" id="allMode" onchange="toggleInputs()"> Run through all techniques from selected sets
  </label><br>

  <div id="countOptions">
    <label class="inline-label">
      <input type="checkbox" id="perItemMode" onchange="toggleInputs()"> Generate specific number of techniques per set
    </label><br>

    <div id="singleCountInput">
      <label>How many techniques in total?
        <input type="number" id="numberToGenerate" min="1" value="10">
      </label>
    </div>

    <div id="perItemInputs" style="display:none;">
      <label>How many techniques per selected set?
        <input type="number" id="perItemCount" min="1" value="2">
      </label>
      <label class="inline-label">
        <input type="checkbox" id="randomOrder"> Randomise order of sets
      </label>
    </div>
  </div>

  <div id="allModeOptions" style="display:none;">
    <label class="inline-label">
      <input type="checkbox" id="shuffleWithinSet"> Randomise numbers within each set
    </label>
  </div>

  <br>
  <button id="start-button" onclick="startGeneration()">Start</button>
</div>

<div id="output"></div>

<div id="feedback-buttons">
  <button onclick="rateItem('correct')">👍</button>
  <button onclick="rateItem('incorrect')">👎</button>
</div>

<div id="summary"></div>

<script>
  const categoryMap = {
    white: ['Ki Bohn Soo'],
    yellow: ['white', 'Sohn Mohk Soo'],
    blue: ['yellow', 'Eui Bohk Soo'],
    red: ['blue', 'Ahn Sohn Mohk Soo', 'Maek Chi Ki'],
    brown: ['red', 'Maek Cha Ki', 'Joo Muhk Maga Ki Bohn Soo'],
    dbn: ['brown', 'Joong Geup Sohn Mohk Soo', 'Ahp Eui Bohk Soo', 'Dee Eui Bohk Soo', 'Kwahn Juhl Ki', 'Too Ki', 'Mohk Joh Leu Ki', 'Bahn Too Ki', 'Yahng Sohn Mohk Soo', 'Ssahng Soo', 'Dahn Doh Mahk Ki'],
    jkn: ['dbn', 'Ki Bohn Bohn', 'Gahk Doh Bub', 'Juhn Hwahn Bub', 'Goh Geup Sohn Mohk Soo', 'Goh Geup Eui Bohk Soo', 'Jah Ki', 'Wah Ki', 'Ee In Jeh Ahp Sool', 'Jahp Ki', 'Johk Bahng Uh Sool', 'Keun Dae Ryuhn'],
    ksn: ['jkn', 'Jee Ahp Sool', 'Yuhn Heng Sool', 'Po Bahk Sool','Jee Peng Ee Sool'],
    psbn: ['ksn', 'Pyhung Soo', 'Bu Chae Sool', 'Bahk Sool'],
    sbn: ['psbn','Ssahng Jee Ahp Sool', 'Chahl Sah Jahng', 'Bahng Wong Ki']
  };

  let currentList = [];
  let currentIndex = 0;

  function expandCategory(cat, visited = new Set()) {
    if (visited.has(cat)) return [];
    visited.add(cat);
    if (!categoryMap[cat]) return [cat];
    return categoryMap[cat].flatMap(sub => expandCategory(sub, visited));
  }

  function toggleInputs() {
    const allMode = document.getElementById('allMode').checked;
    const perMode = document.getElementById('perItemMode').checked;

    document.getElementById('countOptions').style.display = allMode ? 'none' : 'block';
    document.getElementById('perItemInputs').style.display = !allMode && perMode ? 'block' : 'none';
    document.getElementById('singleCountInput').style.display = !allMode && !perMode ? 'block' : 'none';
    document.getElementById('allModeOptions').style.display = allMode ? 'block' : 'none';
  }

  function gatherSelectedItems() {
    const cat = document.getElementById('categorySelect').value;
    if (cat) return expandCategory(cat);
    return Array.from(document.querySelectorAll('.item:checked')).map(cb => cb.value);
  }

  function buildTechniqueList(sets, count, perMode) {
    const allMode = document.getElementById('allMode').checked;
    const shuffleWithin = document.getElementById('shuffleWithinSet')?.checked;
    const list = [];

    if (allMode) {
      sets.forEach(setName => {
        const checkbox = document.querySelector(`.item[value="${setName}"]`);
        if (!checkbox) return;
        const limit = parseInt(checkbox.dataset.limit || '10');
        let numbers = Array.from({ length: limit }, (_, i) => i + 1);
        if (shuffleWithin) shuffle(numbers);
        numbers.forEach(n => list.push(`${setName} ${n}`));
      });
      return list;
    }

    if (perMode) {
      const randomiseSets = document.getElementById('randomOrder')?.checked;
      const setsToUse = randomiseSets ? shuffle([...sets]) : sets;
    
      setsToUse.forEach(setName => {
        const checkbox = document.querySelector(`.item[value="${setName}"]`);
        if (!checkbox) return;
        const limit = parseInt(checkbox.dataset.limit || '10');
        const all = Array.from({ length: limit }, (_, i) => `${setName} ${i + 1}`);
        const usage = new Map(all.map(item => [item, 0]));

        for (let i = 0; i < count; i++) {
          const minUsage = Math.min(...usage.values());
          const candidates = Array.from(usage.entries()).filter(([_, u]) => u === minUsage);
          const [choice] = candidates[Math.floor(Math.random() * candidates.length)];
          usage.set(choice, usage.get(choice) + 1);
          list.push(choice);
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

      const allCombinations = [];
      pool.forEach(({ setName, limit }) => {
        for (let i = 1; i <= limit; i++) {
          allCombinations.push(`${setName} ${i}`);
        }
      });

      const usage = new Map(allCombinations.map(item => [item, 0]));
      for (let i = 0; i < count; i++) {
        const minUsage = Math.min(...usage.values());
        const candidates = Array.from(usage.entries()).filter(([_, u]) => u === minUsage);
        const [choice] = candidates[Math.floor(Math.random() * candidates.length)];
        usage.set(choice, usage.get(choice) + 1);
        list.push(choice);
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

  function displayNext() {
      const output = document.getElementById('output');
      const summary = document.getElementById('summary');

      if (currentIndex < currentList.length) {
        output.textContent = currentList[currentIndex];
        document.getElementById('feedback-buttons').style.display = 'flex';
      } else {
        output.textContent = 'Summary';
        document.getElementById('feedback-buttons').style.display = 'none';
        document.getElementById('start-button').style.display = 'block';
        summary.style.display = 'block';

        const correct = document.querySelectorAll('.correct').length;
        const total = document.querySelectorAll('.correct, .incorrect').length;
        const percent = total > 0 ? Math.round((correct / total) * 100) : 0;

        const scoreBox = document.createElement('div');
        scoreBox.className = 'score-box';

        if (percent >= 80) {
          scoreBox.classList.add('score-high');
        } else if (percent >= 50) {
          scoreBox.classList.add('score-medium');
        } else {
          scoreBox.classList.add('score-low');
        }

        scoreBox.textContent = `🎯 Score: ${correct} / ${total} (${percent}%)`;
        summary.prepend(scoreBox);
      }
  }


  function startGeneration() {
    currentIndex = 0;
    document.getElementById('summary').innerHTML = '';
    document.getElementById('summary').style.display = 'none';
    document.getElementById('start-button').style.display = 'none';

    const selectedItems = gatherSelectedItems();
    if (!selectedItems.length) {
      alert("Select at least one set of techniques.");
      document.getElementById('start-button').style.display = 'block';
      return;
    }

    const perMode = document.getElementById('perItemMode').checked;
    const count = parseInt(document.getElementById(perMode ? 'perItemCount' : 'numberToGenerate').value || '1');
    if (isNaN(count) || count < 1) {
      alert("Enter a valid number.");
      document.getElementById('start-button').style.display = 'block';
      return;
    }

    currentList = buildTechniqueList(selectedItems, count, perMode);
    if (!perMode && document.getElementById('randomOrder')?.checked) {
      shuffle(currentList);
    }

    displayNext();
  }

  function rateItem(feedback) {
    const summary = document.getElementById('summary');
    const span = document.createElement('span');
    const symbol = feedback === 'correct' ? '✅ ' : '❌ ';
    span.textContent = symbol + currentList[currentIndex];
    span.className = feedback;
    summary.appendChild(span);
    summary.appendChild(document.createElement('br'));

    currentIndex++;
    displayNext();
  }

  document.addEventListener('DOMContentLoaded', function () {
    const select = document.getElementById('categorySelect');
    const checkboxes = document.querySelectorAll('.item');

    select.addEventListener('change', () => {
      const selected = select.value;
      const sets = selected ? expandCategory(selected) : [];
      checkboxes.forEach(cb => cb.checked = sets.includes(cb.value));
    });

    checkboxes.forEach(cb => {
      cb.addEventListener('change', () => {
        const selected = Array.from(checkboxes).filter(cb => cb.checked).map(cb => cb.value).sort().join('|');
        let matched = false;
        for (const key in categoryMap) {
          const items = expandCategory(key).sort().join('|');
          if (items === selected) {
            select.value = key;
            matched = true;
            break;
          }
        }
        if (!matched) select.value = '';
      });
    });

    document.getElementById('allMode').addEventListener('change', toggleInputs);
    document.getElementById('perItemMode').addEventListener('change', toggleInputs);
    toggleInputs();
  });
</script>
{% endraw %}