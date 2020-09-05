DROP TABLE IF EXISTS `clips`;
DROP TABLE IF EXISTS `labelled`;
DROP TABLE IF EXISTS `predictions_table`;

CREATE TABLE clips (url TEXT, start INT, end INT, mfcc TEXT, amplitude FLOAT, pitch FLOAT,
       isHighlight BOOLEAN, pred_highlight_rf INT, prob_highlight_nn INT, pred_highlight_nn INT);

CREATE TABLE labelled (url TEXT, start INT, end INT, mfcc TEXT, amplitude FLOAT, pitch FLOAT,
       isHighlight BOOLEAN, pred_highlight_rf INT, prob_highlight_nn INT, pred_highlight_nn INT);

CREATE TABLE predictions_table (isHighlight BOOLEAN, pred_highlight_rf INT, prob_highlight_nn INT, pred_highlight_nn INT);




ALTER TABLE clips ADD word TEXT;
ALTER TABLE labelled ADD word TEXT;

ALTER TABLE clips ADD subjectivity TEXT, ADD polarity TEXT, ADD pred_excitement TEXT;
ALTER TABLE labelled ADD subjectivity TEXT, ADD polarity TEXT, ADD pred_excitement TEXT;