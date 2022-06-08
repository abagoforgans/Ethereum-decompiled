contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_26f3ac13(?) {
    require ('cd', 4).length == ('cd', 36).length
    require ('cd', 4).length == ('cd', 68).length
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        mem[0] = uint32(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(address(msg.sender), 0)
        if not stor0[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)] << 224]:
            require idx < ('cd', 36).length
            require 0 < ('cd', 68).length
            mem[100] = msg.sender
            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[164] = ('cd', 68)[0]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), ('cd', 68)[0]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 4).length
            mem[0] = uint32(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(address(msg.sender), 0)
            stor0[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)] << 224] = 1
        idx = idx + 1
        continue 
}



}
