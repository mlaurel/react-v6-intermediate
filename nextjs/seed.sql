DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, password TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS notes (id INTEGER PRIMARY KEY AUTOINCREMENT, note TEXT NOT NULL, from_user INTEGER NOT NULL, to_user INTEGER NOT NULL, FOREIGN KEY (from_user) REFERENCES users(id), FOREIGN KEY (to_user) REFERENCES users(id));

INSERT INTO users (name, password) VALUES ('brian', 'password');
INSERT INTO users (name, password) VALUES ('tanner', 'password');
INSERT INTO users (name, password) VALUES ('marc', 'password');
INSERT INTO users (name, password) VALUES ('jen', 'password');
INSERT INTO users (name, password) VALUES ('sarah', 'password');
INSERT INTO users (name, password) VALUES ('scott', 'password');
INSERT INTO users (name, password) VALUES ('primeagen', 'password');

INSERT INTO notes (note, from_user, to_user) VALUES ('sup', 1, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('shut up brian', 2, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('CSS is easy – said no one ever.', 1, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your code is like IE6. Please upgrade.', 2, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('Did you just push to main? Rookie move.', 3, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your commits need more personality.', 4, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('React hooks are just dark magic.', 5, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('I replaced your Tailwind with inline styles.', 6, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('Webpack config broke again. Fix it.', 7, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('Linter errors are just suggestions, right?', 1, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your last PR was basically a new framework.', 2, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('Git rebase or Git regret?', 3, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('Can we refactor the refactor?', 4, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('Who broke the build this time?', 5, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('I swear, if you use !important one more time...', 6, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your div soup is out of control.', 7, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('More useEffects? That should fix it.', 1, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('I replaced your for loop with a reduce.', 2, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('CSS Grid > Flexbox. Fight me.', 3, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('Did you just add jQuery to a React project?', 4, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your function names are longer than my patience.', 5, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('Why is your button inside a div inside a span?', 6, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('Is your code self-documenting? Because I’m lost.', 7, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('Tabs or spaces? Just kidding, I don’t care.', 1, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your dark mode just blinded me.', 2, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('Stop nesting components like Russian dolls.', 3, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('I saw your regex. Are you okay?', 4, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('This UI looks like it was made in 1999.', 5, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('Just use a CSS variable. Please.', 6, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('Did you push with --force again?', 7, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('Who needs comments when you have regret?', 1, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your TypeScript errors give me anxiety.', 2, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('The UI is responsive… just not in a good way.', 3, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('I just reviewed your PR. We need to talk.', 4, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('404: Your logic not found.', 5, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('Stop naming functions “doThing()”!', 6, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('“Works on my machine” is not a valid excuse.', 7, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('Bootstrap called. They want their buttons back.', 1, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your component tree is a forest now.', 2, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('That animation is giving me motion sickness.', 3, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('Does this app even have a backend?', 4, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('More comments, fewer mysteries.', 5, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('Did you just override my styles? Rude.', 6, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your API call just summoned the backend team.', 7, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('How many divs does one button need?', 1, 3);
INSERT INTO notes (note, from_user, to_user) VALUES ('I found another console.log. Stop it.', 2, 4);
INSERT INTO notes (note, from_user, to_user) VALUES ('I changed one thing and everything broke.', 3, 5);
INSERT INTO notes (note, from_user, to_user) VALUES ('We should call this app “Technical Debt.”', 4, 6);
INSERT INTO notes (note, from_user, to_user) VALUES ('Your app works in Chrome but nothing else.', 5, 7);
INSERT INTO notes (note, from_user, to_user) VALUES ('VS Code AI suggested I quit.', 6, 1);
INSERT INTO notes (note, from_user, to_user) VALUES ('You wrote another CSS-in-JS library, didn’t you?', 7, 2);