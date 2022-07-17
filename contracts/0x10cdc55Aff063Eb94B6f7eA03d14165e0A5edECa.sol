contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
mapping of uint256 sub_982fb9d8;

function sub_982fb9d8(?) {
    return sub_982fb9d8[arg1]
}

function sub_03fba0ce(?) {
    if sub_982fb9d8[address(arg1)] <= 0:
        return 0
    return sub_982fb9d8[address(arg1)]
}

function _fallback() payable {
    require stor0 != msg.sender
    if msg.value > 0:
        sub_982fb9d8[address(msg.sender)] += msg.value
}

function sendToken(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_104c8675(?) payable {
    require msg.sender == stor0
    if sub_982fb9d8[address(arg1)] > 0:
        if sub_982fb9d8[address(arg1)] >= arg2:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_982fb9d8[address(arg1)] -= arg2
}



}
