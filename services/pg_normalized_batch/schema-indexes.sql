CREATE INDEX idx_normalized_1 ON tweet_tags(tag);
CREATE INDEX idx_normalized_2 ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_normalized_3 ON tweet_tags(id_tweets, tag);
CREATE INDEX idx_normalized_4 ON tweets USING GIN(to_tsvector('english', text));
