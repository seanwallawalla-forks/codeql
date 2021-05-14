/**
 * @id rb/summary/lines-of-code
 * @name Total lines of Ruby code in the database
 * @description The total number of lines of Ruby code from the source code
 *   directory, including external libraries and auto-generated files. This is a
 *   useful metric of the size of a database. This query counts the lines of
 *   code, excluding whitespace or comments.
 * @kind metric
 * @tags summary
 */

import ruby

select sum(File f | exists(f.getRelativePath()) | f.getNumberOfLinesOfCode())
