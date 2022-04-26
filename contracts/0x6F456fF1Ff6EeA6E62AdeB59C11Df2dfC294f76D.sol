contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[148 len 5397]
}



// =====================  Runtime code  =====================


#
#  - drawColors(uint256[] arg1, uint256[] arg2, address arg3)
#
const name = 'Ethcolor'

const initialPrice = 8 * 10^16

const version = '1.0.0'


address owner;
address walletAddress;
mapping of struct accountBalance;
array of uint256 stor3;
array of uint256 stor4;
array of address stor5;
array of uint256 stor6;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function getAccountBalance(address arg1) {
    return accountBalance[address(arg1)].field_0
}

function getAccountReferrer(address arg1) {
    return accountBalance[address(arg1)].field_256
}

function _fallback() {
  stop
}

function pixels(uint256 arg1) {
    require arg1 < 16384
    return stor3[arg1], stor4[arg1], stor5[arg1], stor6[arg1]
}

function getTimes() {
    mem[524384] = 0
    mem[524416 len 524256] = 0
    idx = 0
    while idx < 16384:
        mem[(32 * idx) + 524384] = stor4[idx]
        idx = idx + 1
        continue 
    return memory
      from 524384
       len 524288
}

function getColors() {
    mem[524384] = 0
    mem[524416 len 524256] = 0
    idx = 0
    while idx < 16384:
        mem[(32 * idx) + 524384] = stor3[idx]
        idx = idx + 1
        continue 
    return memory
      from 524384
       len 524288
}

function getOwners() {
    mem[524384] = 0
    mem[524416 len 524256] = 0
    idx = 0
    while idx < 16384:
        mem[(32 * idx) + 524384] = stor5[idx]
        idx = idx + 1
        continue 
    return memory
      from 524384
       len 524288
}

function finalize() {
    require msg.sender == owner
    require msg.sender == walletAddress
    require block.timestamp >= 1546300799
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawETH(uint256 arg1) {
    require arg1 > 0
    require accountBalance[address(msg.sender)].field_0 >= arg1
    require arg1 <= accountBalance[address(msg.sender)].field_0
    accountBalance[address(msg.sender)].field_0 -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg1, msg.sender);
}



}
