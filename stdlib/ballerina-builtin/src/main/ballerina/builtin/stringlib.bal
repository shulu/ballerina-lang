// Copyright (c) 2017 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

documentation {
    Compares two strings, ignoring the case of the strings.

    P{{anotherString}} The string to be compared
    R{{}} True if the strings are equal; false otherwise
}
public native function string::equalsIgnoreCase(string anotherString) returns boolean;

documentation {
    Returns a string with all the characters converted to uppercase.

    R{{}} The string converted to uppercase
}
public native function string::toUpper() returns string;

documentation {
    Returns a new string that is the substring of the specified string.

    P{{startIndex}} The starting index
    P{{endIndex}} The ending index
    R{{}} The derived sub string
}
public native function string::substring(int startIndex, int endIndex) returns string;

documentation {
    Returns the first index of the last occurence of the substring within the specified string.

    P{{substring}} The substring to search for
    R{{}} The index of the last occurence of the substring
}
public native function string::lastIndexOf(string substring) returns int;

documentation {
    Replaces the first instance of the replacePattern with the replaceWith string and returns the result.

    P{{regex}} The pattern to search for
    P{{replaceWith}} The replacement string
    R{{}} The derived string
}
public native function string::replaceFirst(string regex, string replaceWith) returns string;

documentation {
    Returns the length of the specified string.

    R{{}} The length of the specified string
}
public native function string::length() returns int;

documentation {
    Returns a Boolean value indicating whether a string contains the specified substring.

    P{{substring}} The substring to be compared
    R{{}} True if the string contains the substring; false otherwise
}
public native function string::contains(string substring) returns boolean;

documentation {
    Returns the first index of the first occurence of the substring within the specified string.

    P{{substring}} The substring to search for
    R{{}} The index of the first occurence of the substring
}
public native function string::indexOf(string substring) returns int;

documentation {
    Returns a trimmed string by omitting the leading and trailing whitespaces of the original string.

    R{{}} The derived string
}
public native function string::trim() returns string;

documentation {
    Returns a Boolean value indicating whether the string ends with specified suffix.

    P{{suffix}} The suffix to be compared
    R{{}} True if the string ends with the suffix; false otherwise
}
public native function string::hasSuffix(string suffix) returns boolean;

documentation {
    Returns an unescaped string by omitting the escape characters of the original string.

    R{{}} The derived string
}
public native function string::unescape() returns string;

documentation {
    Returns a string with all the characters converted to lowercase.

    R{{}} The string converted to lowercase
}
public native function string::toLower() returns string;

documentation {
    Returns a Boolean value indicating whether a string starts with the specified prefix.

    P{{prefix}} The prefix to be compared
    R{{}} True if the string starts with the prefix; false otherwise
}
public native function string::hasPrefix(string prefix) returns boolean;

documentation {
    Replaces each substring of the string that matches the given regular expression with the given replacement.

    P{{regex}} The regular expression to search for
    P{{replaceWith}} The replacement string
    R{{}} The derived string
}
public native function string::replaceAll(string regex, string replaceWith) returns string;

documentation {
    Replaces all instances of the replacePattern string with the replaceWith string and returns the result.

    P{{regex}} The pattern to search for
    P{{replaceWith}} The replacement string
    R{{}} The derived string
}
public native function string::replace(string regex, string replaceWith) returns string;

documentation {
    Splits the string with the given regular expression to produce a string array.

    P{{regex}} The regex to split the string
    R{{}} The split string array
}
public native function string::split(string regex) returns string[];

documentation {
    Converts string to a blob.

    P{{encoding}} Encoding to used in the conversion
    R{{}} The blob representation of the given String
}
public native function string::toBlob(string encoding) returns blob;

documentation {
    Finds all the strings matching the regular expression.

    P{{regex}} Regular expression
    R{{}} The matching string array
    R{{error}} Error will be returned if there exist a syntax error in pattern
}
public native function string::findAll(string regex) returns string[]|error;

documentation {
    Returns a Boolean value indicating whether the string matches the regular expression.

    P{{regex}} Regular expression
    R{{}} True if the string matches the regex; false otherwise
    R{{error}} Error will be returned if there exist a syntax error in pattern
}
public native function string::matches(string regex) returns boolean|error;

documentation {
    Encode a given string with Base64 encoding scheme.

    P{{charset}} Charset to be used
    R{{}} Return an encoded string
    R{{}} error will get return, in case of errors
}
public native function string::base64Encode(string charset = "utf-8") returns string|error;

documentation {
    Decode a given string with Base64 encoding scheme.

    P{{charset}} Charset to be used
    R{{}} Return a decoded string
    R{{}} error will get return, in case of errors
}
public native function string::base64Decode(string charset = "utf-8") returns string|error;

documentation {
    Encodes a base16 encoded string to base64 encoding.

    R{{}} the encoded string.
}
public native function string::base16ToBase64Encode() returns string;

documentation {
    Encodes a base64 encoded string to base16 encoding.

    R{{}} the encoded string.
}
public native function string::base64ToBase16Encode() returns string;
