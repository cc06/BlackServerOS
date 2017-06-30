import cryptanalib as ca

print 'Testing Fermat factorization...'

modulus = 716964916940879546138124882672818584584991631224140663455771200877839938258702872560211127714342696696978111845386119004386454160099769917873311978018269699088196264842514324761699982234532991660513929672464059417955040688538274647460432095192282995372532392341624828593409100981930850228230166628322248541207663074491770050432549927573300401601578359202437399664989334325743075443102265971522582582357641746603821745017615347999943134068224622811513368008659486950263954867333494385737028833253098188249645785442424127885550248613190661561390047434065372762008317395993145554579676084581312723173025106529214679408366419325062831305551918344243750114756646295632940359082010844539535985698938402396592035497626347813743975539631873474695917008946922622884825381071268215125820524533163273148841361308746046011512296946221060471464978840615120297578983355331951803391663341257430986421227855717210388181685091395855574001571995725978801733087672335839619804513360580026340867708359282125820732699165264115715701966309500153578123160118878654210251382105515862141692489741781345330617437972714951872803775320256148151645609645049787162841793170170573836930810880845788534901943812435571891665082866604423396743762474153857287967214449L

if ca.fermat_factor(modulus, minutes=1)[0]!=26776200569552050360928488962869952978871278993361939411950790923259154523464489306772506102808637775499459611829871620845764715633722188259128139015161082686396760682425761707982021498403849558441893670655607924900188513925432889755615094766645027767535936003808948443609476545157053962714726057762228503009785742391473615286237369810868106335588819111912379773508629337824892249938503106810327779049160295556606168175132509319110118266736394151660571330228423572320070238338424984139995465100156163701958712069041222642614079867511439218858530804369075183667296845814671105540924207771930715280651822295595012927761L:
   raise Exception('Fermat factorization is broken.')