-- DROP TABLE IF EXISTS `clips`;
-- DROP TABLE IF EXISTS `labelled`;

-- CREATE TABLE clips (url TEXT, start INT, end INT, mfcc TEXT, amplitude FLOAT, pitch FLOAT,
--        isHighlight BOOLEAN);

-- CREATE TABLE labelled (url TEXT, start INT, end INT, mfcc TEXT, amplitude FLOAT, pitch FLOAT,
--        isHighlight BOOLEAN);


-- ALTER TABLE clips ADD word TEXT;
-- ALTER TABLE labelled ADD word TEXT;


ALTER TABLE clips ADD subjectivity TEXT, ADD polarity TEXT, ADD pred_excitement TEXT;
ALTER TABLE labelled ADD subjectivity TEXT, ADD polarity TEXT, ADD pred_excitement TEXT;