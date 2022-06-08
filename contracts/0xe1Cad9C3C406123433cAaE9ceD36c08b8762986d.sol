contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
mapping of uint8 stor8;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a2b13dae(?) {
    require ('cd', 4).length == ('cd', 36).length
    require 0 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 1 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 2 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 3 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 4 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 5 < ('cd', 68).length
    require ('cd', 4).length == 7
    require 6 < ('cd', 68).length
    require ('cd', 4).length == 7
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        mem[0] = uint32(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(address(msg.sender), 8)
        if not stor8[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)] << 224]:
            require idx < ('cd', 36).length
            require 0 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 1 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 260)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 2 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 484)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 3 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor4)
            call stor4.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 708)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 4 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor5)
            call stor5.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 932)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 5 < ('cd', 68).length
            require idx < 7
            require ext_code.size(stor6)
            call stor6.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 1156)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 36).length
            require 6 < ('cd', 68).length
            require idx < 7
            mem[100] = msg.sender
            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[164] = cd[((32 * idx) + cd[68] + 1380)]
            require ext_code.size(stor7)
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 1380)]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < ('cd', 4).length
            mem[0] = uint32(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(address(msg.sender), 8)
            stor8[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)] << 224] = 1
        idx = idx + 1
        continue 
}



}
