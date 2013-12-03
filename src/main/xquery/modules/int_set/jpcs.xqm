module namespace int-set = 'int-set/jpcs';

import module namespace rbtree = 'http://snelson.org.uk/functions/rbtree' at 'rbtree_jpcs.xqm';

declare variable $int-set:LT := function($a, $b) { $a lt $b };

declare function int-set:new() {
  rbtree:create()
};

declare function int-set:insert(
  $set as item()*,
  $x as xs:integer
) as item()* {
  rbtree:insert($int-set:LT, $set, $x)
};

declare function int-set:contains(
  $set as item()*,
  $x as xs:integer
) as item()* {
  rbtree:contains($int-set:LT, $set, $x)
};
