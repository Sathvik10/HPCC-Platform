/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_ECLYY_HOME_SATHVIK_HPCC_HPCC_PLATFORM_BUILD_ECL_HQL_HQLGRAM_H_INCLUDED
# define YY_ECLYY_HOME_SATHVIK_HPCC_HPCC_PLATFORM_BUILD_ECL_HQL_HQLGRAM_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int eclyydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ABS = 258,
    ACOS = 259,
    AFTER = 260,
    AGGREGATE = 261,
    ALGORITHM = 262,
    ALIAS = 263,
    ALL = 264,
    ALLNODES = 265,
    AND = 266,
    ANY = 267,
    APPLY = 268,
    _ARRAY_ = 269,
    AS = 270,
    ASCII = 271,
    ASIN = 272,
    TOK_ASSERT = 273,
    ASSTRING = 274,
    ATAN = 275,
    ATAN2 = 276,
    ATMOST = 277,
    AVE = 278,
    BACKUP = 279,
    BEFORE = 280,
    BEST = 281,
    BETWEEN = 282,
    TOK_BITMAP = 283,
    BIG = 284,
    BLOB = 285,
    BLOOM = 286,
    BNOT = 287,
    BUILD = 288,
    CARDINALITY = 289,
    CASE = 290,
    TOK_CATCH = 291,
    CHECKPOINT = 292,
    CHOOSE = 293,
    CHOOSEN = 294,
    CHOOSENALL = 295,
    CHOOSESETS = 296,
    CLUSTER = 297,
    CLUSTERSIZE = 298,
    COGROUP = 299,
    __COMMON__ = 300,
    __COMPOUND__ = 301,
    COMBINE = 302,
    COMPRESSED = 303,
    __COMPRESSED__ = 304,
    CRITICAL = 305,
    TOK_CONST = 306,
    CORRELATION = 307,
    COS = 308,
    COSH = 309,
    COUNT = 310,
    COUNTER = 311,
    COVARIANCE = 312,
    CPPBODY = 313,
    TOK_CPP = 314,
    CRC = 315,
    CRON = 316,
    CSV = 317,
    DATASET = 318,
    __DEBUG__ = 319,
    DEDUP = 320,
    DEFAULT = 321,
    DEFINE = 322,
    DENORMALIZE = 323,
    DEPRECATED = 324,
    DESC = 325,
    DICTIONARY = 326,
    DISTRIBUTE = 327,
    DISTRIBUTED = 328,
    DISTRIBUTION = 329,
    DYNAMIC = 330,
    EBCDIC = 331,
    ECLCRC = 332,
    ELSE = 333,
    ELSEIF = 334,
    EMBED = 335,
    EMBEDDED = 336,
    _EMPTY_ = 337,
    ENCODING = 338,
    ENCRYPT = 339,
    ENCRYPTED = 340,
    END = 341,
    ENDCPP = 342,
    ENDEMBED = 343,
    ENTH = 344,
    ENUM = 345,
    TOK_ERROR = 346,
    ESCAPE = 347,
    EVALUATE = 348,
    EVENT = 349,
    EVENTEXTRA = 350,
    EVENTNAME = 351,
    EXCEPT = 352,
    EXCLUSIVE = 353,
    EXISTS = 354,
    EXP = 355,
    EXPIRE = 356,
    EXPORT = 357,
    EXTEND = 358,
    FAIL = 359,
    FAILCODE = 360,
    FAILMESSAGE = 361,
    FAILURE = 362,
    TOK_FALSE = 363,
    FEATURE = 364,
    FETCH = 365,
    FEW = 366,
    FILEPOSITION = 367,
    FILTERED = 368,
    FIRST = 369,
    TOK_FIXED = 370,
    FLAT = 371,
    FORMAT_ATTR = 372,
    FORWARD = 373,
    FROM = 374,
    FROMJSON = 375,
    FROMUNICODE = 376,
    FROMXML = 377,
    FULL = 378,
    FUNCTION = 379,
    GETENV = 380,
    GLOBAL = 381,
    GRAPH = 382,
    GROUP = 383,
    GROUPBY = 384,
    GROUPED = 385,
    __GROUPED__ = 386,
    GUARD = 387,
    HASH = 388,
    HASH32 = 389,
    HASH64 = 390,
    HASHMD5 = 391,
    HAVING = 392,
    HEADING = 393,
    HINT = 394,
    HTTPCALL = 395,
    HTTPHEADER = 396,
    IF = 397,
    IFF = 398,
    IFBLOCK = 399,
    TOK_IGNORE = 400,
    IMPLEMENTS = 401,
    IMPORT = 402,
    INDEPENDENT = 403,
    INLINE = 404,
    TOK_IN = 405,
    INNER = 406,
    INTERFACE = 407,
    INTERNAL = 408,
    INTFORMAT = 409,
    ISNULL = 410,
    ISVALID = 411,
    ITERATE = 412,
    JOIN = 413,
    JOINED = 414,
    JSON_TOKEN = 415,
    KEEP = 416,
    KEYDIFF = 417,
    KEYED = 418,
    KEYPATCH = 419,
    KEYUNICODE = 420,
    LABEL = 421,
    LABELED = 422,
    LAST = 423,
    LEFT = 424,
    LENGTH = 425,
    LIBRARY = 426,
    LIKELY = 427,
    LIMIT = 428,
    LINKCOUNTED = 429,
    LITERAL = 430,
    LITTLE = 431,
    LN = 432,
    LOADXML = 433,
    LOCAL = 434,
    LOCALE = 435,
    LOCALFILEPOSITION = 436,
    TOK_LOG = 437,
    LOGICALFILENAME = 438,
    LOOKUP = 439,
    LOOP = 440,
    LZW = 441,
    MANY = 442,
    MAP = 443,
    MATCHED = 444,
    MATCHLENGTH = 445,
    MATCHPOSITION = 446,
    MATCHROW = 447,
    MATCHTEXT = 448,
    MATCHUNICODE = 449,
    MATCHUTF8 = 450,
    MAX = 451,
    MAXCOUNT = 452,
    MAXLENGTH = 453,
    MAXSIZE = 454,
    MERGE = 455,
    MERGE_ATTR = 456,
    MERGEJOIN = 457,
    MIN = 458,
    MODULE = 459,
    MOFN = 460,
    MULTIPLE = 461,
    NAMED = 462,
    NAMEOF = 463,
    NAMESPACE = 464,
    NOBOUNDCHECK = 465,
    NOCASE = 466,
    NOCOMBINE = 467,
    NOCONST = 468,
    NOFOLD = 469,
    NOHOIST = 470,
    NOLOCAL = 471,
    NONEMPTY = 472,
    NOOVERWRITE = 473,
    NORMALIZE = 474,
    NOROOT = 475,
    NOSCAN = 476,
    NOSORT = 477,
    __NOSTREAMING__ = 478,
    NOT = 479,
    NOTHOR = 480,
    NOTIFY = 481,
    NOTRIM = 482,
    NOXPATH = 483,
    OF = 484,
    OMITTED = 485,
    ONCE = 486,
    ONFAIL = 487,
    ONLY = 488,
    ONWARNING = 489,
    OPT = 490,
    __OPTION__ = 491,
    OR = 492,
    ORDERED = 493,
    OUTER = 494,
    OUTPUT = 495,
    TOK_OUT = 496,
    OVERWRITE = 497,
    __OWNED__ = 498,
    PACKED = 499,
    PARALLEL = 500,
    PARSE = 501,
    PARTITION = 502,
    PARTITION_ATTR = 503,
    TOK_PATTERN = 504,
    PENALTY = 505,
    PERSIST = 506,
    PHYSICALFILENAME = 507,
    PIPE = 508,
    __PLATFORM__ = 509,
    POWER = 510,
    PREFETCH = 511,
    PRELOAD = 512,
    PRIORITY = 513,
    PRIVATE = 514,
    PROBABILITY = 515,
    PROCESS = 516,
    PROJECT = 517,
    PROXYADDRESS = 518,
    PULL = 519,
    PULLED = 520,
    QUANTILE = 521,
    QUOTE = 522,
    RANDOM = 523,
    RANGE = 524,
    RANK = 525,
    RANKED = 526,
    REALFORMAT = 527,
    RECORD = 528,
    RECORDOF = 529,
    RECOVERY = 530,
    REFRESH = 531,
    REGEXFIND = 532,
    REGEXFINDSET = 533,
    REGEXREPLACE = 534,
    REGROUP = 535,
    REJECTED = 536,
    RELATIONSHIP = 537,
    REMOTE = 538,
    REPEAT = 539,
    RESPONSE = 540,
    RETRY = 541,
    RETURN = 542,
    RIGHT = 543,
    RIGHT_NN = 544,
    ROLLUP = 545,
    ROUND = 546,
    ROUNDUP = 547,
    ROW = 548,
    ROWS = 549,
    ROWSET = 550,
    ROWDIFF = 551,
    RULE = 552,
    SAMPLE = 553,
    SCAN = 554,
    SCORE = 555,
    SECTION = 556,
    SELF = 557,
    SEPARATOR = 558,
    __SEQUENCE__ = 559,
    SEQUENTIAL = 560,
    SERVICE = 561,
    SET = 562,
    SHARED = 563,
    SIMPLE_TYPE = 564,
    __SIMPLIFIED__ = 565,
    SIN = 566,
    SINGLE = 567,
    SINH = 568,
    SIZEOF = 569,
    SKEW = 570,
    SKIP = 571,
    SMART = 572,
    SOAPACTION = 573,
    SOAPCALL = 574,
    SORT = 575,
    SORTED = 576,
    SQL = 577,
    SQRT = 578,
    STABLE = 579,
    __STAND_ALONE__ = 580,
    STEPPED = 581,
    STORED = 582,
    STREAMED = 583,
    SUBSORT = 584,
    SUCCESS = 585,
    SUM = 586,
    SWAPPED = 587,
    TABLE = 588,
    TAN = 589,
    TANH = 590,
    __TARGET_PLATFORM__ = 591,
    TERMINATOR = 592,
    THEN = 593,
    THISNODE = 594,
    THOR = 595,
    THRESHOLD = 596,
    TIMEOUT = 597,
    TIMELIMIT = 598,
    TOKEN = 599,
    TOJSON = 600,
    TOPN = 601,
    TOUNICODE = 602,
    TOXML = 603,
    TRACE = 604,
    TRANSFER = 605,
    TRANSFORM = 606,
    TRIM = 607,
    TRUNCATE = 608,
    TOK_TRUE = 609,
    TYPE = 610,
    TYPEOF = 611,
    UNICODEORDER = 612,
    UNGROUP = 613,
    UNLIKELY = 614,
    UNORDERED = 615,
    UNSIGNED = 616,
    UNSORTED = 617,
    UNSTABLE = 618,
    UPDATE = 619,
    USE = 620,
    VALIDATE = 621,
    VARIANCE = 622,
    VIRTUAL = 623,
    VOLATILE = 624,
    WAIT = 625,
    TOK_WARNING = 626,
    WHEN = 627,
    WHICH = 628,
    WHITESPACE = 629,
    WIDTH = 630,
    WILD = 631,
    WITHIN = 632,
    WHOLE = 633,
    WORKUNIT = 634,
    XML_TOKEN = 635,
    XMLDECODE = 636,
    XMLDEFAULT = 637,
    XMLENCODE = 638,
    XMLNS = 639,
    XMLPROJECT = 640,
    XMLTEXT = 641,
    XMLUNICODE = 642,
    XPATH = 643,
    FIELD_REF = 644,
    FIELDS_REF = 645,
    ANDAND = 646,
    EQ = 647,
    NE = 648,
    LE = 649,
    LT = 650,
    GE = 651,
    GT = 652,
    ORDER = 653,
    ASSIGN = 654,
    GOESTO = 655,
    DOTDOT = 656,
    DIV = 657,
    SHIFTL = 658,
    SHIFTR = 659,
    DATAROW_ID = 660,
    DATASET_ID = 661,
    DICTIONARY_ID = 662,
    SCOPE_ID = 663,
    VALUE_ID = 664,
    VALUE_ID_REF = 665,
    ACTION_ID = 666,
    UNKNOWN_ID = 667,
    RECORD_ID = 668,
    ALIEN_ID = 669,
    TRANSFORM_ID = 670,
    PATTERN_ID = 671,
    FEATURE_ID = 672,
    EVENT_ID = 673,
    ENUM_ID = 674,
    LIST_DATASET_ID = 675,
    SORTLIST_ID = 676,
    TYPE_ID = 677,
    SET_TYPE_ID = 678,
    PATTERN_TYPE_ID = 679,
    DATASET_TYPE_ID = 680,
    DICTIONARY_TYPE_ID = 681,
    DATAROW_FUNCTION = 682,
    DATASET_FUNCTION = 683,
    DICTIONARY_FUNCTION = 684,
    VALUE_FUNCTION = 685,
    ACTION_FUNCTION = 686,
    PATTERN_FUNCTION = 687,
    RECORD_FUNCTION = 688,
    EVENT_FUNCTION = 689,
    SCOPE_FUNCTION = 690,
    TRANSFORM_FUNCTION = 691,
    LIST_DATASET_FUNCTION = 692,
    VALUE_MACRO = 693,
    DEFINITIONS_MACRO = 694,
    BOOL_CONST = 695,
    INTEGER_CONST = 696,
    STRING_CONST = 697,
    DATA_CONST = 698,
    REAL_CONST = 699,
    UNICODE_CONST = 700,
    TYPE_LPAREN = 701,
    TYPE_RPAREN = 702,
    MACRO = 703,
    COMPLEX_MACRO = 704,
    ENDMACRO = 705,
    SKIPPED = 706,
    HASHEND = 707,
    HASHELIF = 708,
    HASHBREAK = 709,
    INDEX = 710,
    HASH_CONSTANT = 711,
    HASH_OPTION = 712,
    HASH_WORKUNIT = 713,
    HASH_STORED = 714,
    HASH_LINK = 715,
    HASH_ONWARNING = 716,
    HASH_WEBSERVICE = 717,
    INTERNAL_READ_NEXT_TOKEN = 718,
    YY_LAST_TOKEN = 719,
    LOWEST_PRECEDENCE = 720,
    reduceAttrib = 721,
    HIGHEST_PRECEDENCE = 722
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif



int eclyyparse (HqlGram* parser);

#endif /* !YY_ECLYY_HOME_SATHVIK_HPCC_HPCC_PLATFORM_BUILD_ECL_HQL_HQLGRAM_H_INCLUDED  */