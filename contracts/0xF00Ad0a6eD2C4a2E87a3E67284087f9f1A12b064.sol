contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 21
    stor0.length.field_8 = 'Single Transfer Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'STT'
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 2 * 10^18
    stor7 = 0
    require not msg.value
    mem[224 len -2273] = code.data[2783 len -2273]
    stor0[].field_0 = Array(len=mem[mem[224] + 224], data=mem[mem[224] + 256 len mem[mem[224] + 224]])
    stor1[].field_0 = Array(len=mem[mem[256] + 224], data=mem[mem[256] + 256 len mem[mem[256] + 224]])
    stor5 = msg.sender
    stor6 = msg.sender
    stor4 = mem[320]
    stor3 = mem[288]
    stor2 = mem[288]
    return code.data[510 len 2273]
}



// =====================  Runtime code  =====================


const implementsERC721 = 1

const totalSupply = 1


array of uint256 name;
array of uint256 symbol;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address tokenOwner;
address stor7;

function name() {
    return name[0 len name.length]
}

function ownerOf(uint256 arg1) {
    require 2046 == arg1
    return tokenOwner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenOwner() {
    return tokenOwner
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    if tokenOwner == arg1:
        return 1
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require tokenOwner == msg.sender
    require arg1 != msg.sender
    require 2046 == arg2
    stor7 = arg1
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require tokenOwner == msg.sender
    require 2046 == arg2
    require arg1
    tokenOwner = arg1
    stor7 = 0
    emit Transfer(2046, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor7 == arg2
    require tokenOwner == arg1
    require 2046 == arg3
    require arg2
    tokenOwner = arg2
    stor7 = 0
    emit Transfer(2046, arg1, arg2);
}

function takeOwnership(uint256 arg1) {
    require msg.sender
    require 2046 == arg1
    require stor7 == msg.sender
    require tokenOwner != msg.sender
    tokenOwner = msg.sender
    stor7 = 0
    emit Transfer(2046, tokenOwner, msg.sender);
}

function payout(address arg1) {
    require stor5 == msg.sender
    if eth.balance(this.address) > 10^18:
        if arg1:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor5 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
}

function purchaseToken() payable {
    require tokenOwner != msg.sender
    require msg.sender
    require msg.value >= stor3
    stor2 = stor3
    if stor2 < stor4:
        stor3 = 200 * stor2 / 94
    else:
        stor3 = 120 * stor2 / 94
    tokenOwner = msg.sender
    stor7 = 0
    emit Transfer(2046, tokenOwner, msg.sender);
    call tokenOwner with:
       value 94 * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if eth.balance(this.address) > 10^18:
        call stor5 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if msg.value - stor2 > 0:
        call msg.sender with:
           value msg.value - stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
