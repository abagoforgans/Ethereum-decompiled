contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_953b2425Address; offset 8
mapping of uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor7;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isRecoverer(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    return bool(stor8[address(arg1)])
}

function decimals() {
    return decimals
}

function isFundkeeper(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_953b2425(?) {
    return sub_953b2425Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x747370656e6465722063616e6e6f74206265207468652030783020616464726573,
                    mem[197 len 31]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6574686973206163636f756e7420646f65736e27742068617665207468697320726f6c6520746f2072656d6f76,
                    mem[209 len 19]
    stor7[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceRecoverer() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6574686973206163636f756e7420646f65736e27742068617665207468697320726f6c6520746f2072656d6f76,
                    mem[209 len 19]
    stor8[address(msg.sender)] = 0
    emit RecovererRemoved(msg.sender);
}

function renounceFundkeeper() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6574686973206163636f756e7420646f65736e27742068617665207468697320726f6c6520746f2072656d6f76,
                    mem[209 len 19]
    stor3[address(msg.sender)] = 0
    emit FundkeeperTransferred(msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x737370656e64657220616464726573732063616e6e6f74206265207468652030783020616464726573,
                    mem[205 len 23]
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x3062206d757374206265206c657373207468616e206f7220657175616c20746f20612c206f7468657277697365206320636f756c64206f766572666c6f,
                    mem[225 len 3]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x737370656e64657220616464726573732063616e6e6f74206265207468652030783020616464726573,
                    mem[205 len 23]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6563206d75737420626520677265746572207468616e206f7220657175616c20746f20612c206f74686572776973652061202b206220686173206f766572666c6f77,
                    mem[230 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe6d73672e73656e64657220646f6573206e6f74206861766520746865207265636f766572657220726f6c,
                    mem[207 len 21]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x736d73672e73656e64657220646f6573206e6f74206861766520746865206d696e74657220726f6c,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7374686973206163636f756e7420616c72656164792068617320616c7265616479206265656e20676976656e207468697320726f6c,
                    mem[217 len 11]
    stor7[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addRecoverer(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe6d73672e73656e64657220646f6573206e6f74206861766520746865207265636f766572657220726f6c,
                    mem[207 len 21]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7374686973206163636f756e7420616c72656164792068617320616c7265616479206265656e20676976656e207468697320726f6c,
                    mem[217 len 11]
    stor8[address(arg1)] = 1
    emit RecovererAdded(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x657472616e736665722076616c7565206d757374206265206c657373207468616e207468652062616c616e6365206f66207468652066726f6d206163636f756e
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7363616e6e6f74207472616e7366657220746f207468652030783020616464726573,
                    mem[198 len 30]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x3062206d757374206265206c657373207468616e206f7220657175616c20746f20612c206f7468657277697365206320636f756c64206f766572666c6f,
                    mem[225 len 3]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6563206d75737420626520677265746572207468616e206f7220657175616c20746f20612c206f74686572776973652061202b206220686173206f766572666c6f77,
                    mem[230 len 30]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x736d73672e73656e64657220646f6573206e6f74206861766520746865206d696e74657220726f6c,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7763616e6e6f742061737369676e2061206d696e74656420616d6f756e7420746f207468652030783020616464726573,
                    mem[212 len 16]
    if totalSupply + arg2 < totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6563206d75737420626520677265746572207468616e206f7220657175616c20746f20612c206f74686572776973652061202b206220686173206f766572666c6f77,
                    mem[230 len 30]
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6563206d75737420626520677265746572207468616e206f7220657175616c20746f20612c206f74686572776973652061202b206220686173206f766572666c6f77,
                    mem[230 len 30]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFundkeeper(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x736d73672e73656e64657220646f6573206e6f742068617665207468652066756e646b656570657220726f6c,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7466756e646b656570657220726f6c652063616e6e6f742062652068656c64206279203078,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7374686973206163636f756e7420616c72656164792068617320616c7265616479206265656e20676976656e207468697320726f6c,
                    mem[217 len 11]
    stor3[address(arg1)] = 1
    sub_953b2425Address = arg1
    emit FundkeeperTransferred(0, arg1);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e7468652030783020616464726573732063616e6e6f7420686f6c6420726f6c65,
                    mem[197 len 31]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6574686973206163636f756e7420646f65736e27742068617665207468697320726f6c6520746f2072656d6f76,
                    mem[209 len 19]
    stor3[address(msg.sender)] = 0
    emit FundkeeperTransferred(msg.sender, 0);
    emit FundkeeperTransferred(msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6563616e6e6f74207472616e7366657246726f6d20612076616c75652067726561746572207468616e2074686520616c6c6f77656420616d6f756e,
                    mem[223 len 5]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x3062206d757374206265206c657373207468616e206f7220657175616c20746f20612c206f7468657277697365206320636f756c64206f766572666c6f,
                    mem[225 len 3]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x657472616e736665722076616c7565206d757374206265206c657373207468616e207468652062616c616e6365206f66207468652066726f6d206163636f756e
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7363616e6e6f74207472616e7366657220746f207468652030783020616464726573,
                    mem[198 len 30]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x3062206d757374206265206c657373207468616e206f7220657175616c20746f20612c206f7468657277697365206320636f756c64206f766572666c6f,
                    mem[225 len 3]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6563206d75737420626520677265746572207468616e206f7220657175616c20746f20612c206f74686572776973652061202b206220686173206f766572666c6f77,
                    mem[230 len 30]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
