contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 systemprice;
array of struct viewauctionlist;
array of struct stor6;
array of struct stor7;
array of uint256 userlistlength;
array of uint256 mypost;
mapping of uint256 ownerof;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint8 stor13;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432784;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432785;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432786;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432787;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986694;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986695;
array of uint8 stor111414077815863400510004064629973595961579173665589224203503662149373724986696;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986697;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986698;

function name() {
    return name[0 len name.length]
}

function viewauctionlist(uint256 arg1, uint256 arg2) {
    require arg1 < viewauctionlist.length
    return address(stor[('name', 'viewauctionlist', 5) + (14 * arg1) + 12][arg2].field_0), 
           stor[('name', 'viewauctionlist', 5) + (14 * arg1) + 12][arg2].field_256,
           stor[('name', 'viewauctionlist', 5) + (14 * arg1) + 12][arg2].field_512
}

function getacttslen() {
    return stor7.length
}

function decimals() {
    return decimals
}

function admins(address arg1) {
    return bool(stor11[arg1])
}

function ownerof() {
    return ownerof[this.address]
}

function getuseraddress(uint256 arg1) {
    return stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816][3][0 len stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816][3].length].field_0
}

function balanceOf(address arg1) {
    return ownerof[address(arg1)]
}

function getuserlistlength(address arg1) {
    return userlistlength[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getactlen() {
    return viewauctionlist.length
}

function getactendlen() {
    return stor6.length
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function systemprice() {
    return systemprice
}

function getmypost(uint256 arg1) {
    require arg1 < mypost[msg.sender]
    return mypost[msg.sender][arg1]
}

function actived() {
    return bool(stor13)
}

function getmypostlastid() {
    return mypost[msg.sender]
}

function _fallback() payable {
    revert
}

function setactive(bool arg1) {
    require msg.sender == owner
    stor13 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setsystemprice(uint256 arg1) {
    require 1 == bool(stor11[msg.sender])
    systemprice = arg1
}

function admAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
}

function freezeAccount(address arg1, bool arg2) {
    require 1 == bool(stor11[msg.sender])
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setauctionsystem(uint256 arg1, uint256 arg2) {
    require 1 == bool(stor11[msg.sender])
    require arg1 < viewauctionlist.length
    uint8(viewauctionlist[arg1].field_2304) = 1
    viewauctionlist[arg1].field_2560 = arg2
}

function addusermoney(address arg1, uint256 arg2) {
    require 1 == bool(stor11[msg.sender])
    require arg2 + ownerof[address(arg1)] >= ownerof[address(arg1)]
    ownerof[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function setsendgoods(uint256 arg1) {
    require arg1 < viewauctionlist.length
    require not stor12[msg.sender]
    require msg.sender == address(viewauctionlist[arg1].field_0)
    require block.timestamp > viewauctionlist[arg1].field_512
    require not viewauctionlist[arg1].field_2560
    viewauctionlist[arg1].field_2560 = 1
    uint8(viewauctionlist[arg1].field_2304) = 1
}

function btycownerof() {
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function btycBalanceOf(address arg1) {
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function canuse(address arg1) {
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.getcanuse(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require 1 == bool(stor13)
    require arg2 <= ownerof[address(msg.sender)]
    require ownerof[address(arg1)] + arg2 > ownerof[address(arg1)]
    ownerof[msg.sender] -= arg2
    ownerof[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ownerof[address(arg1)] + ownerof[msg.sender] == ownerof[msg.sender] + ownerof[address(arg1)]
    return 0
}

function editusetaddress(uint256 arg1, string arg2) {
    require 1 == bool(stor13)
    require arg1 < viewauctionlist.length
    require msg.sender == address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_0)
    require not stor12[msg.sender]
    stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 1
}

function transferadmin(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(stor11[msg.sender])
    require arg2
    require 1 == bool(stor13)
    require arg3 <= ownerof[address(arg1)]
    require ownerof[address(arg2)] + arg3 > ownerof[address(arg2)]
    ownerof[arg1] -= arg3
    ownerof[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require ownerof[address(arg2)] + ownerof[arg1] == ownerof[arg1] + ownerof[address(arg2)]
}

function sendleftmoney(address arg1, uint256 arg2) {
    require 1 == bool(stor11[msg.sender])
    require arg1
    require 1 == bool(stor13)
    require arg2 <= ownerof[address(this.address)]
    require ownerof[address(arg1)] + arg2 > ownerof[address(arg1)]
    ownerof[this.address] -= arg2
    ownerof[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    require ownerof[address(arg1)] + ownerof[this.address] == ownerof[this.address] + ownerof[address(arg1)]
}

function transferto(uint256 arg1) {
    require this.address
    require 1 == bool(stor13)
    require arg1 <= ownerof[address(msg.sender)]
    require ownerof[address(this.address)] + arg1 > ownerof[address(this.address)]
    ownerof[msg.sender] -= arg1
    ownerof[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require ownerof[address(this.address)] + ownerof[msg.sender] == ownerof[msg.sender] + ownerof[address(this.address)]
    return 0
}

function setauctionotherfree(uint256 arg1) {
    require 1 == bool(stor11[msg.sender])
    require arg1 < viewauctionlist.length
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.0xe724529c with:
         gas gas_remaining wei
        args address(viewauctionlist[arg1].field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    viewauctionlist[arg1].field_2560 = 2
}

function setauctionother(uint256 arg1) {
    require 1 == bool(stor11[msg.sender])
    require arg1 < viewauctionlist.length
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.0xe724529c with:
         gas gas_remaining wei
        args address(viewauctionlist[arg1].field_0), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(viewauctionlist[arg1].field_2304) = 1
    viewauctionlist[arg1].field_2560 = 3
}

function addbtycmoney(address arg1, uint256 arg2) {
    require 1 == bool(stor11[msg.sender])
    mem[324 len 0] = None
    mem[388 len 0] = None
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args 64, 128, 1, mem[324], 1, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg2, this.address, arg1);
}

function subbtycmoney(address arg1, uint256 arg2) {
    require 1 == bool(stor11[msg.sender])
    mem[324 len 0] = None
    mem[388 len 0] = None
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.subBalances(address[] arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args 64, 128, 1, mem[324], 1, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg2, arg1, this.address);
}

function endauctionother(uint256 arg1) {
    require 1 == bool(stor13)
    require arg1 < viewauctionlist.length
    require 3 == viewauctionlist[arg1].field_2560
    require stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 > 0
    mem[324 len 0] = None
    mem[388 len 0] = None
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args 64, 128, 1, mem[324], 1, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0, this.address, msg.sender);
    stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 = 0
    emit getmoneys(msg.sender, 0);
}

function addauction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, string arg6, string arg7) {
    require 1 == bool(stor13)
    require not stor12[address(msg.sender)]
    require arg1 >= block.timestamp - 3600
    require arg1 < block.timestamp + (48 * 24 * 3600)
    require arg2 > arg1
    require arg2 < arg1 + (48 * 24 * 3600)
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= systemprice
    viewauctionlist.length++
    address(viewauctionlist[viewauctionlist.length].field_0) = msg.sender
    viewauctionlist[viewauctionlist.length].field_256 = arg1
    viewauctionlist[viewauctionlist.length].field_512 = arg2
    viewauctionlist[viewauctionlist.length].field_768 = arg4
    viewauctionlist[viewauctionlist.length].field_1024 = arg5
    viewauctionlist[viewauctionlist.length].field_1280 = arg3
    viewauctionlist[viewauctionlist.length].field_1536 = arg4
    stor[sha3((14 * viewauctionlist.length) + ('name', 'viewauctionlist', 5) + 7)][].field_0 = Array(len=arg6.length, data=arg6[all])
    stor[sha3((14 * viewauctionlist.length) + ('name', 'viewauctionlist', 5) + 8)][].field_0 = Array(len=arg7.length, data=arg7[all])
    uint8(viewauctionlist[viewauctionlist.length].field_2304) = 0
    viewauctionlist[viewauctionlist.length].field_2560 = 0
    viewauctionlist[viewauctionlist.length].field_2816 = 0
    mypost[address(msg.sender)]++
    mypost[address(msg.sender)][mypost[address(msg.sender)]] = viewauctionlist.length
    return viewauctionlist.length
}

function inputauction(uint256 arg1, uint256 arg2, string arg3) payable {
    require not stor12[msg.sender]
    require 1 == bool(stor13)
    require arg1 < viewauctionlist.length
    require not uint8(viewauctionlist[arg1].field_2304)
    require not viewauctionlist[arg1].field_2560
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.getcanuse(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 > viewauctionlist[arg1].field_1536
    require arg2 <= viewauctionlist[arg1].field_1024
    require arg2 > stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0
    require ext_call.return_data[0] >= arg2 - stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0
    if viewauctionlist[arg1].field_512 < block.timestamp:
        uint8(viewauctionlist[arg1].field_2304) = 1
    else:
        if arg2 == viewauctionlist[arg1].field_1024:
            uint8(viewauctionlist[arg1].field_2304) = 1
        mem[ceil32(arg3.length) + 356 len 0] = None
        mem[ceil32(arg3.length) + 420 len 0] = None
        require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
        call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.subBalances(address[] arg1, uint256[] arg2) with:
             gas gas_remaining wei
            args 64, 128, 1, mem[ceil32(arg3.length) + 356], 1, mem[ceil32(arg3.length) + 420]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 - stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0), msg.sender, this.address);
        stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 = arg2
        viewauctionlist[arg1].field_1536 = arg2
        viewauctionlist[arg1].field_2816++
        address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_0) = msg.sender
        stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_256 = block.timestamp
        stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_512 = arg2
        stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816][3][].field_0 = Array(len=arg3.length, data=arg3[all])
        userlistlength[address(msg.sender)]++
        userlistlength[address(msg.sender)][userlistlength[address(msg.sender)]] = arg1
}

function endauction(uint256 arg1) {
    require arg1 < viewauctionlist.length
    require 1 == bool(stor13)
    require 2 == viewauctionlist[arg1].field_2560
    require not stor12[msg.sender]
    require 1 == bool(uint8(viewauctionlist[arg1].field_2304))
    require viewauctionlist[arg1].field_2816 > 1
    require stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 > 0
    if 2 == viewauctionlist[arg1].field_2816:
        require address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][0].field_0) == msg.sender
        require (3 * viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 > 0
        stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 = 0
        mem[324 len 0] = None
        mem[388 len 0] = None
        require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
        call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
             gas gas_remaining wei
            args 64, 128, 1, mem[324], 1, mem[388]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(((3 * viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0), this.address, msg.sender);
        emit getmoneys(msg.sender, (3 * viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0);
    else:
        if address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][0].field_0) == msg.sender:
            require (viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 > 0
            stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 = 0
            mem[324 len 0] = None
            mem[388 len 0] = None
            require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
            call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 128, 1, mem[324], 1, mem[388]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Transfer(((viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0), this.address, msg.sender);
            emit getmoneys(msg.sender, (viewauctionlist[arg1].field_1536 / 10) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0);
        else:
            require viewauctionlist[arg1].field_2816 - 2
            require (2 * viewauctionlist[arg1].field_1536 / 10 / viewauctionlist[arg1].field_2816 - 2) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 > 0
            stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0 = 0
            mem[324 len 0] = None
            mem[388 len 0] = None
            require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
            call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
                 gas gas_remaining wei
                args 64, 128, 1, mem[324], 1, mem[388]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Transfer(((2 * viewauctionlist[arg1].field_1536 / 10 / viewauctionlist[arg1].field_2816 - 2) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0), this.address, msg.sender);
            emit getmoneys(msg.sender, (2 * viewauctionlist[arg1].field_1536 / 10 / viewauctionlist[arg1].field_2816 - 2) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 13][address(msg.sender)].field_0);
}

function auctionlistts(uint256 arg1) {
    require arg1 < stor7.length
    mem[96] = stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length
    mem[128] = stor[sha3((14 * arg1) + ('name', 'stor7', 7) + 7)].field_0
    idx = 128
    s = 0
    while stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor7', 7) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 160
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 128] = stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length
    mem[0] = (14 * arg1) + sha3(7) + 8
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 160] = stor[sha3((14 * arg1) + ('name', 'stor7', 7) + 8)].field_0
    idx = ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 160
    s = 0
    while ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor7', 7) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 160] = address(stor7[arg1].field_0)
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 192] = stor7[arg1].field_256
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 224] = stor7[arg1].field_512
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 256] = stor7[arg1].field_768
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 288] = stor7[arg1].field_1024
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 320] = stor7[arg1].field_1280
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 352] = stor7[arg1].field_1536
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 448] = bool(uint8(stor7[arg1].field_2304))
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 480] = stor7[arg1].field_2560
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 512] = stor7[arg1].field_2816
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 384] = 384
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 544] = stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 576 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)] = mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)]
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 416] = stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + 416
    mem[stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 576] = stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length
    mem[stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 608 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length)] = mem[ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length)]
    if not stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length % 32:
        return address(stor7[arg1].field_0), 
               stor7[arg1].field_256,
               stor7[arg1].field_512,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1280,
               stor7[arg1].field_1536,
               Array(len=stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 576 len stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length + stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 32]),
               stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + 416,
               bool(uint8(stor7[arg1].field_2304)),
               stor7[arg1].field_2560,
               stor7[arg1].field_2816
    mem[floor32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 608] = mem[floor32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + -stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length % 32 + 640 len stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length % 32]
    return address(stor7[arg1].field_0), 
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1280,
           stor7[arg1].field_1536,
           Array(len=stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + 576 len floor32(stor[(14 * arg1) + ('name', 'stor7', 7) + 8].length) + stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length) + 64]),
           stor[(14 * arg1) + ('name', 'stor7', 7) + 7].length + 416,
           bool(uint8(stor7[arg1].field_2304)),
           stor7[arg1].field_2560,
           stor7[arg1].field_2816
}

function auctionlistend(uint256 arg1) {
    require arg1 < stor6.length
    mem[96] = stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length
    mem[128] = stor[sha3((14 * arg1) + ('name', 'stor6', 6) + 7)].field_0
    idx = 128
    s = 0
    while stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor6', 6) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 160
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 128] = stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length
    mem[0] = (14 * arg1) + sha3(6) + 8
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 160] = stor[sha3((14 * arg1) + ('name', 'stor6', 6) + 8)].field_0
    idx = ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 160
    s = 0
    while ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor6', 6) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 160] = address(stor6[arg1].field_0)
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 192] = stor6[arg1].field_256
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 224] = stor6[arg1].field_512
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 256] = stor6[arg1].field_768
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 288] = stor6[arg1].field_1024
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 320] = stor6[arg1].field_1280
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 352] = stor6[arg1].field_1536
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 448] = bool(uint8(stor6[arg1].field_2304))
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 480] = stor6[arg1].field_2560
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 512] = stor6[arg1].field_2816
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 384] = 384
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 544] = stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 576 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)] = mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)]
    mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 416] = stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + 416
    mem[stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 576] = stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length
    mem[stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 608 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length)] = mem[ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length)]
    if not stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length % 32:
        return address(stor6[arg1].field_0), 
               stor6[arg1].field_256,
               stor6[arg1].field_512,
               stor6[arg1].field_768,
               stor6[arg1].field_1024,
               stor6[arg1].field_1280,
               stor6[arg1].field_1536,
               Array(len=stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 576 len stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length + stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 32]),
               stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + 416,
               bool(uint8(stor6[arg1].field_2304)),
               stor6[arg1].field_2560,
               stor6[arg1].field_2816
    mem[floor32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 608] = mem[floor32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + -stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length % 32 + 640 len stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length % 32]
    return address(stor6[arg1].field_0), 
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           stor6[arg1].field_768,
           stor6[arg1].field_1024,
           stor6[arg1].field_1280,
           stor6[arg1].field_1536,
           Array(len=stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + 576 len floor32(stor[(14 * arg1) + ('name', 'stor6', 6) + 8].length) + stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length) + 64]),
           stor[(14 * arg1) + ('name', 'stor6', 6) + 7].length + 416,
           bool(uint8(stor6[arg1].field_2304)),
           stor6[arg1].field_2560,
           stor6[arg1].field_2816
}

function setgetgoods(uint256 arg1) {
    require 1 == bool(stor13)
    require not stor12[msg.sender]
    require arg1 < viewauctionlist.length
    require viewauctionlist[arg1].field_512 < block.timestamp
    require 1 == bool(uint8(viewauctionlist[arg1].field_2304))
    require 1 == viewauctionlist[arg1].field_2560
    require msg.sender == address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_0)
    viewauctionlist[arg1].field_2560 = 2
    mem[324 len 0] = None
    mem[388 len 0] = None
    require ext_code.size(0x56f527c3f4a24bb2beba449ffd766331da840ffa)
    call 0x56f527c3f4a24bb2beba449ffd766331da840ffa.addBalances(address[] arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args 64, 128, 1, mem[324], 1, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer((70 * stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_512 / 100), this.address, address(viewauctionlist[arg1].field_0));
    stor6.length++
    address(stor6[stor6.length].field_0) = address(viewauctionlist[arg1].field_0)
    storF652[stor6.length] = viewauctionlist[arg1].field_256
    storF652[stor6.length] = viewauctionlist[arg1].field_512
    storF652[stor6.length] = viewauctionlist[arg1].field_768
    storF652[stor6.length] = viewauctionlist[arg1].field_1024
    storF652[stor6.length] = viewauctionlist[arg1].field_1280
    storF652[stor6.length] = viewauctionlist[arg1].field_1536
    if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
        storF652[stor6.length] = viewauctionlist[arg1].field_1792
        idx = 0
        while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba].length + 31 / 32 > idx:
            stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba)] = 0
            idx = idx + 1
            continue 
        if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
            storF652[stor6.length] = viewauctionlist[arg1].field_2048
            idx = 0
            while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                idx = idx + 1
                continue 
        else:
            storF652[stor6.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
            if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                idx = 0
                while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                    stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                    stor[s + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                    stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                    idx = idx + 1
                    continue 
    else:
        storF652[stor6.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
        if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
            idx = 0
            while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba].length + 31 / 32 > idx:
                stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                stor[s + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
            while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba].length + 31 / 32 > idx:
                stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2ba)] = 0
                idx = idx + 1
                continue 
        if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
            storF652[stor6.length] = viewauctionlist[arg1].field_2048
            idx = 0
            while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                idx = idx + 1
                continue 
        else:
            storF652[stor6.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
            if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                idx = 0
                while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                    stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                    stor[s + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                while stor[(14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9].length + 31 / 32 > idx:
                    stor[idx + sha3((14 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b9)] = 0
                    idx = idx + 1
                    continue 
    storF652[stor6.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
    storF652[stor6.length] = viewauctionlist[arg1].field_2560
    storF652[stor6.length] = viewauctionlist[arg1].field_2816
}

function auctionlisting(uint256 arg1) {
    require arg1 < viewauctionlist.length
    mem[96] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length
    mem[128] = stor[sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
    idx = 128
    s = 0
    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 128] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length
    mem[0] = (14 * arg1) + sha3(5) + 8
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 160] = stor[sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
    idx = ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 160
    s = 0
    while ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160] = address(viewauctionlist[arg1].field_0)
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 192] = viewauctionlist[arg1].field_256
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 224] = viewauctionlist[arg1].field_512
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 256] = viewauctionlist[arg1].field_768
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 288] = viewauctionlist[arg1].field_1024
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 320] = viewauctionlist[arg1].field_1280
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 352] = viewauctionlist[arg1].field_1536
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 448] = bool(uint8(viewauctionlist[arg1].field_2304))
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 480] = viewauctionlist[arg1].field_2560
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 512] = viewauctionlist[arg1].field_2816
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 384] = 384
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 544] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 576 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)] = mem[128 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)]
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 416] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416
    mem[stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 576] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length
    mem[stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 608 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length)] = mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length)]
    if not stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32:
        return address(viewauctionlist[arg1].field_0), 
               viewauctionlist[arg1].field_256,
               viewauctionlist[arg1].field_512,
               viewauctionlist[arg1].field_768,
               viewauctionlist[arg1].field_1024,
               viewauctionlist[arg1].field_1280,
               viewauctionlist[arg1].field_1536,
               Array(len=stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 576 len stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 32]),
               stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416,
               bool(uint8(viewauctionlist[arg1].field_2304)),
               viewauctionlist[arg1].field_2560,
               viewauctionlist[arg1].field_2816
    mem[floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 608] = mem[floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + -stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32 + 640 len stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32]
    return address(viewauctionlist[arg1].field_0), 
           viewauctionlist[arg1].field_256,
           viewauctionlist[arg1].field_512,
           viewauctionlist[arg1].field_768,
           viewauctionlist[arg1].field_1024,
           viewauctionlist[arg1].field_1280,
           viewauctionlist[arg1].field_1536,
           Array(len=stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length, data=mem[128 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)], mem[(2 * ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 576 len floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 64]),
           stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416,
           bool(uint8(viewauctionlist[arg1].field_2304)),
           viewauctionlist[arg1].field_2560,
           viewauctionlist[arg1].field_2816
}

function viewauction(uint256 arg1) {
    require arg1 < viewauctionlist.length
    mem[96] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length
    mem[128] = stor[sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
    idx = 128
    s = 0
    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 160
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 128] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length
    mem[0] = (14 * arg1) + sha3(5) + 7
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160] = stor[sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
    idx = ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160
    s = 0
    while ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 160] = address(viewauctionlist[arg1].field_0)
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 192] = viewauctionlist[arg1].field_256
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 224] = viewauctionlist[arg1].field_512
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 256] = viewauctionlist[arg1].field_1280
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 288] = viewauctionlist[arg1].field_768
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 320] = viewauctionlist[arg1].field_1024
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 352] = viewauctionlist[arg1].field_1536
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 448] = bool(uint8(viewauctionlist[arg1].field_2304))
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 480] = viewauctionlist[arg1].field_2560
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 512] = viewauctionlist[arg1].field_2816
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 384] = 384
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 544] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 576 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)] = mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)]
    mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 416] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416
    mem[stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 576] = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length
    mem[stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 608 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length)] = mem[128 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length)]
    if not stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32:
        return address(viewauctionlist[arg1].field_0), 
               viewauctionlist[arg1].field_256,
               viewauctionlist[arg1].field_512,
               viewauctionlist[arg1].field_1280,
               viewauctionlist[arg1].field_768,
               viewauctionlist[arg1].field_1024,
               viewauctionlist[arg1].field_1536,
               Array(len=stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length, data=mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)], mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + (2 * ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)) + 576 len stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 32]),
               stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416,
               bool(uint8(viewauctionlist[arg1].field_2304)),
               viewauctionlist[arg1].field_2560,
               viewauctionlist[arg1].field_2816
    mem[floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 608] = mem[floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + -stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32 + 640 len stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length % 32]
    return address(viewauctionlist[arg1].field_0), 
           viewauctionlist[arg1].field_256,
           viewauctionlist[arg1].field_512,
           viewauctionlist[arg1].field_1280,
           viewauctionlist[arg1].field_768,
           viewauctionlist[arg1].field_1024,
           viewauctionlist[arg1].field_1536,
           Array(len=stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length, data=mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + 160 len ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)], mem[ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + (2 * ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length)) + 576 len floor32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length) + stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + -ceil32(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length) + 64]),
           stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 416,
           bool(uint8(viewauctionlist[arg1].field_2304)),
           viewauctionlist[arg1].field_2560,
           viewauctionlist[arg1].field_2816
}

function tsauction(uint256 arg1) {
    require 1 == bool(stor13)
    require arg1 < viewauctionlist.length
    require viewauctionlist[arg1].field_512 > block.timestamp
    require block.timestamp > viewauctionlist[arg1].field_512 + (48 * 24 * 3600)
    require msg.sender == address(stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 12][viewauctionlist[arg1].field_2816].field_0)
    if viewauctionlist[arg1].field_512 + (48 * 24 * 3600) >= block.timestamp:
        if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
            if 1 == viewauctionlist[arg1].field_2560:
                viewauctionlist[arg1].field_2560 = 5
                uint8(viewauctionlist[arg1].field_2304) = 1
                stor7.length++
                address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                storA66C[stor7.length] = viewauctionlist[arg1].field_256
                storA66C[stor7.length] = viewauctionlist[arg1].field_512
                storA66C[stor7.length] = viewauctionlist[arg1].field_768
                storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                    storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                    idx = 0
                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                        idx = idx + 1
                        continue 
                    if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                        storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    else:
                        storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                        if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                            idx = 0
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                else:
                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                            idx = idx + 1
                            continue 
                    if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                        storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    else:
                        storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                        if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                            idx = 0
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                storA66C[stor7.length] = viewauctionlist[arg1].field_2816
    else:
        if viewauctionlist[arg1].field_2560:
            if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
                if 1 == viewauctionlist[arg1].field_2560:
                    viewauctionlist[arg1].field_2560 = 5
                    uint8(viewauctionlist[arg1].field_2304) = 1
                    stor7.length++
                    address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                    storA66C[stor7.length] = viewauctionlist[arg1].field_256
                    storA66C[stor7.length] = viewauctionlist[arg1].field_512
                    storA66C[stor7.length] = viewauctionlist[arg1].field_768
                    storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                    storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                    storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                    if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                        storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                            idx = idx + 1
                            continue 
                        if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                            idx = 0
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                        else:
                            storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                            if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                    stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                        if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                            idx = 0
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                                stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                idx = idx + 1
                                continue 
                        if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                            idx = 0
                            while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                idx = idx + 1
                                continue 
                        else:
                            storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                            if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                    stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                    idx = idx + 1
                                    continue 
                    storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2816
        else:
            viewauctionlist[arg1].field_2560 = 5
            uint8(viewauctionlist[arg1].field_2304) = 1
            stor7.length++
            address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
            storA66C[stor7.length] = viewauctionlist[arg1].field_256
            storA66C[stor7.length] = viewauctionlist[arg1].field_512
            storA66C[stor7.length] = viewauctionlist[arg1].field_768
            storA66C[stor7.length] = viewauctionlist[arg1].field_1024
            storA66C[stor7.length] = viewauctionlist[arg1].field_1280
            storA66C[stor7.length] = viewauctionlist[arg1].field_1536
            if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                idx = 0
                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                    idx = idx + 1
                    continue 
                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                    idx = 0
                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                        idx = idx + 1
                        continue 
                    storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                    if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
                        if 1 == viewauctionlist[arg1].field_2560:
                            viewauctionlist[arg1].field_2560 = 5
                            uint8(viewauctionlist[arg1].field_2304) = 1
                            stor7.length++
                            address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                            storA66C[stor7.length] = viewauctionlist[arg1].field_256
                            storA66C[stor7.length] = viewauctionlist[arg1].field_512
                            storA66C[stor7.length] = viewauctionlist[arg1].field_768
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                            if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                                storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                                if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                                        stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                else:
                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                    if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
                        if 1 == viewauctionlist[arg1].field_2560:
                            viewauctionlist[arg1].field_2560 = 5
                            uint8(viewauctionlist[arg1].field_2304) = 1
                            stor7.length++
                            address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                            storA66C[stor7.length] = viewauctionlist[arg1].field_256
                            storA66C[stor7.length] = viewauctionlist[arg1].field_512
                            storA66C[stor7.length] = viewauctionlist[arg1].field_768
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                            if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                                storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                                if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                                        stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2816
            else:
                storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                    idx = 0
                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                        stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                        idx = idx + 1
                        continue 
                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                    idx = 0
                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                        idx = idx + 1
                        continue 
                    storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                    if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
                        if 1 == viewauctionlist[arg1].field_2560:
                            viewauctionlist[arg1].field_2560 = 5
                            uint8(viewauctionlist[arg1].field_2304) = 1
                            stor7.length++
                            address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                            storA66C[stor7.length] = viewauctionlist[arg1].field_256
                            storA66C[stor7.length] = viewauctionlist[arg1].field_512
                            storA66C[stor7.length] = viewauctionlist[arg1].field_768
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                            if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                                storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                                if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                                        stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                else:
                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                        idx = 0
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                            idx = idx + 1
                            continue 
                    storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                    storA66C[stor7.length] = viewauctionlist[arg1].field_2816
                    if viewauctionlist[arg1].field_512 + (216 * 24 * 3600) < block.timestamp:
                        if 1 == viewauctionlist[arg1].field_2560:
                            viewauctionlist[arg1].field_2560 = 5
                            uint8(viewauctionlist[arg1].field_2304) = 1
                            stor7.length++
                            address(stor7[stor7.length].field_0) = address(viewauctionlist[arg1].field_0)
                            storA66C[stor7.length] = viewauctionlist[arg1].field_256
                            storA66C[stor7.length] = viewauctionlist[arg1].field_512
                            storA66C[stor7.length] = viewauctionlist[arg1].field_768
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1024
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1280
                            storA66C[stor7.length] = viewauctionlist[arg1].field_1536
                            if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length:
                                storA66C[stor7.length] = viewauctionlist[arg1].field_1792
                                idx = 0
                                while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                    stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792) + 1
                                if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_1792)) - 1 and viewauctionlist[arg1].field_1792):
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32 > idx:
                                        stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 7)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 7].length + 31 / 32
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93971)] = 0
                                        idx = idx + 1
                                        continue 
                                if 31 >= stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length:
                                    storA66C[stor7.length] = viewauctionlist[arg1].field_2048
                                    idx = 0
                                    while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                        stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    storA66C[stor7.length] = Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048) + 1
                                    if not Mask(255, 1, (256 * not bool(viewauctionlist[arg1].field_2048)) - 1 and viewauctionlist[arg1].field_2048):
                                        idx = 0
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32 > idx:
                                            stor[s + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = stor[idx + sha3((14 * arg1) + ('name', 'viewauctionlist', 5) + 8)].field_0
                                            s = s + 1
                                            idx = idx + 1
                                            continue 
                                        idx = stor[(14 * arg1) + ('name', 'viewauctionlist', 5) + 8].length + 31 / 32
                                        while stor[(14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970].length + 31 / 32 > idx:
                                            stor[idx + sha3((14 * stor7.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93970)] = 0
                                            idx = idx + 1
                                            continue 
                            storA66C[stor7.length] = uint8(bool(uint8(viewauctionlist[arg1].field_2304)))
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2560
                            storA66C[stor7.length] = viewauctionlist[arg1].field_2816
}



}
