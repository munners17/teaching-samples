from collections import Counter
import string

""" wordcount.py:  This is a collection of counting libraries """

def word_count( text ):
	stripped_text = ''.join(ch for ch in text if ch not in set(string.punctuation))
	return len(stripped_text.split(' '))

def most_common_token_count( text ):
	stripped_text = ''.join(ch for ch in text if ch not in set(string.punctuation))
	histogram = Counter(stripped_text.split(' '))
	return histogram.most_common(1)[0][1]

if __name__ == "__main__":
	print(word_count("This is a sentence to count things."))
	print(most_common_token_count("Some text to see if text is the some most common."))
