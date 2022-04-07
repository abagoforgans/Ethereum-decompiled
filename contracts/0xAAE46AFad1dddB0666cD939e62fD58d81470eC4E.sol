contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;

function _fallback() {
    stor1 = code.data[5031 len 20]
    require ext_code.size(code.data[5031 len 20])
    call code.data[5031 len 20].0x10fe9ae8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[12 len 20] or Mask(96, 160, stor2)
    return code.data[215 len 4804]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address hashtagAddress;
array of uint256 stor2;
array of address stor3;

function hashtagToken() {
    return address(stor2.length)
}

function hashtag() {
    return hashtagAddress
}

function _fallback() payable {
    revert
}

function readDeal(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[0] = sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32])
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 <= 4
    mem[ceil32(arg1.length) + 128] = stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0
    return mem[ceil32(arg1.length) + 128], stor0[mem[0]].field_256, stor0[mem[0]].field_512, stor0[mem[0]].field_768
}

function fundDeal(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require not stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_512
    require ext_call.success
    require ext_call.return_data[0]
    stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768 = msg.sender
}

function dispute(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 <= 4
    require not stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0
    if arg2 != msg.sender:
        require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768 == msg.sender
    else:
        require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 = 2
}

function makeDealForTwo(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0xe1489191 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] / 2 <= arg2
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 288] = 0
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0xe1489191 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg1.length) + 256] = address(msg.sender)
    mem[ceil32(arg1.length) + 276 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 276] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 276] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 276 len arg1.length % 32]].field_0 = 0
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 276 len arg1.length % 32]].field_256 = ext_call.return_data[0]
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 276 len arg1.length % 32]].field_512 = arg2
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 276 len arg1.length % 32]].field_768 = 0
}

function cancelDeal(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(msg.sender)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 180 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _27 = sha3(sha3(msg.sender, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]), 0)
    if stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_512 > 0:
        if not stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768:
            mem[ceil32(arg1.length) + 132] = msg.sender
            mem[ceil32(arg1.length) + 164] = uint256(stor2[_27])
            require ext_code.size(address(stor2.length))
            call address(stor2.length).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, uint256(stor2[_27])
            require ext_call.success
            require ext_call.return_data[0]
            mem[ceil32(arg1.length) + 128] = address(msg.sender)
            mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 = 4
}

function resolve(string arg1, address arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _37 = sha3(sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]), 0)
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0x6985e46e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 <= 4
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 == 2
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 132] = stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768
    mem[ceil32(arg1.length) + 164] = uint256(stor2[_37]) - arg3
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3[_37], uint256(stor2[_37]) - arg3
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 = 3
}

function payout(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(msg.sender)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 <= 4
    require not stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0x6985e46e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_256
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768, (2 * stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_512) - stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_256
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0x8b9e2832 with:
         gas gas_remaining - 710 wei
        args stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_768, 5
    require ext_call.success
    require ext_code.size(hashtagAddress)
    call hashtagAddress.0x8b9e2832 with:
         gas gas_remaining - 710 wei
        args msg.sender, 5
    require ext_call.success
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 = 1
}



}
