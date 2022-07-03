contract main {




// =====================  Runtime code  =====================


#
#  - verify(bytes32 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - sub_64a15da0(?)
#  - sub_9706361f(?)
#  - sub_d4cf9655(?)
#
const getBalance = eth.balance(this.address)


uint256 nonce;
uint256 threshold;
array of address sub_5099335e;
address stor5;

function threshold() {
    return threshold
}

function sub_5099335e(?) {
    require arg1 >= 0
    require arg1 < sub_5099335e.length
    return sub_5099335e[arg1]
}

function nonce() {
    return nonce
}

function sub_f8fdac74(?) {
    return sub_5099335e.length
}

function _fallback() payable {
  stop
}

function sub_747a325e(?) {
    require msg.sender == stor5
    idx = 0
    while idx < arg1:
        mem[96 len 1040] = code.data[8348 len 1040]
        create contract with 0 wei
                        code: code.data[8348 len 1040]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_5099335e.length++
        mem[0] = 3
        sub_5099335e[sub_5099335e.length] = address(create.new_address)
        idx = idx + 1
        continue 
}

function getBalance(address arg1) {
    idx = 0
    s = 0
    while idx < sub_5099335e.length:
        mem[0] = 3
        mem[100] = sub_5099335e[idx]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args sub_5099335e[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length)
}

function getBalanceToken(address arg1) {
    idx = 0
    s = 0
    while idx < sub_5099335e.length:
        mem[0] = 3
        mem[100] = sub_5099335e[idx]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args sub_5099335e[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length)
}



}
