contract main {


// =======================  Init code  ======================


uint8 stor13; offset 8
uint256 stor14;

function _fallback() payable {
    stor13 = 0
    stor14 = msg.sender or Mask(96, 160, stor14)
    return code.data[88 len 17442]
}



// =====================  Runtime code  =====================


#
#  - attack(uint256 arg1, uint256 arg2, uint256[] arg3)
#
uint256 stor0;
address eAddress; offset 16
uint256 stor13; offset 16
address stor14;

function e() payable {
    return address(eAddress)
}

function _fallback() payable {
  stop
}

function sete(address arg1) payable {
    if msg.sender == stor14:
        Mask(240, 0, stor13) = Mask(240, 0, arg1)
}

function buildCity(string arg1, uint256[2] arg2, uint256[2] arg3) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 64] = call.data[36 len 64]
    call address(eAddress).0xe56556a9 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    stor0 = ext_call.return_data[0]
    call address(eAddress).0x388aef5c with:
         gas gas_remaining - 25050 wei
    call address(eAddress).0xcfed9199 with:
         gas gas_remaining - 25050 wei
        args stor0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        call address(eAddress).0x29de91db with:
             gas gas_remaining - 25050 wei
            args msg.sender, 2
        require ext_call.success
    else:
        call address(eAddress).0xf71d96cb with:
             gas gas_remaining - 25050 wei
            args stor0
        require ext_call.success
        call address(eAddress).0xb5cc916c with:
             gas gas_remaining - 25050 wei
        if ext_call.return_data[64] < ext_call.return_data[0]:
            call address(eAddress).0x29de91db with:
                 gas gas_remaining - 25050 wei
                args msg.sender, 6
            require ext_call.success
        else:
            call address(eAddress).0xb5cc916c with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(eAddress).0x4dc43eaf with:
                 gas gas_remaining - 25050 wei
                args stor0, ext_call.return_data[64] - ext_call.return_data[0]
            require call.data[36] <= 33
            require call.data[68] <= 33
            require call.data[100] <= 33
            require call.data[132] <= 33
            require call.data[36] - call.data[100] <= 1
            require call.data[36] - call.data[100] >= -1
            require call.data[68] - call.data[132] <= 1
            require call.data[68] - call.data[132] >= -1
            call address(eAddress).0xa90b9128 with:
                 gas gas_remaining - 25050 wei
                args call.data[36], call.data[68]
            require ext_call.success
            require ext_call.return_data[0] <= 0
            call address(eAddress).0xa90b9128 with:
                 gas gas_remaining - 25050 wei
                args call.data[100], call.data[132]
            require ext_call.success
            require ext_call.return_data[0] > 0
            call address(eAddress).0x6a28db13 with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(eAddress).0xb5cc916c with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).0x6a28db13 with:
                 gas gas_remaining - 25050 wei
            if var61005 < ext_call.return_data[0]:
                call address(eAddress).0xfe8e6a63 with:
                     gas gas_remaining - 25050 wei
                    args var63002
                require ext_call.success
                call address(eAddress).0x6a51b918 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0]
                call address(eAddress).0xf71d96cb with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0]
                call address(eAddress).0x4dc43eaf with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], ext_call.return_data[64] + (ext_call.return_data[0] / ext_call.return_data[0])
                call address(eAddress).0x6a28db13 with:
                     gas gas_remaining - 25050 wei
                s = ceil32(arg1.length) + 292
                idx = var65007
                s = var65008
                s = var65013
                while idx + 1 < ext_call.return_data[0]:
                    call address(eAddress).0xfe8e6a63 with:
                         gas gas_remaining - 25050 wei
                        args (idx + 1)
                    require ext_call.success
                    call address(eAddress).0x6a51b918 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0]
                    call address(eAddress).0xf71d96cb with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0]
                    mem[ceil32(arg1.length) + 256 len 224] = ext_call.return_data[0 len 224]
                    mem[ceil32(arg1.length) + 260] = ext_call.return_data[0]
                    mem[ceil32(arg1.length) + 292] = ext_call.return_data[64] + (ext_call.return_data[0] / ext_call.return_data[0])
                    call address(eAddress).0x4dc43eaf with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], ext_call.return_data[64] + (ext_call.return_data[0] / ext_call.return_data[0])
                    call address(eAddress).0x6a28db13 with:
                         gas gas_remaining - 25050 wei
                    mem[ceil32(arg1.length) + 256] = ext_call.return_data[0]
                    s = ceil32(arg1.length) + 292
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[64]
                    continue 
            call address(eAddress).0x8173b813 with:
                 gas gas_remaining - 25050 wei
                args stor0, ext_call.return_data[128] + 1
            require ext_call.success
            call address(eAddress).0x755b5b75 with:
                 gas gas_remaining - 25050 wei
                args stor0, ext_call.return_data[160] + 1
            call address(eAddress).pushCity() with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).0x24b5c134 with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).0x7acbfb65 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], stor0
            call address(eAddress).0x24b5c134 with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).0xfe55932a with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], Array(len=arg1.length, data=arg1[all])
            require ext_call.success
            call address(eAddress).0x24b5c134 with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).0x468129a5 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 0, 1
            call address(eAddress).0x24b5c134 with:
                 gas gas_remaining - 25050 wei
            call address(eAddress).setRowcol(uint256 rg1, uint256[2] rg2) with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], call.data[36 len 64]
            call address(eAddress).0x73ffd969 with:
                 gas gas_remaining - 25050 wei
                args call.data[36], call.data[68], stor0 + 1
            require ext_call.success
            if ext_call.return_data[128] < 1:
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call address(eAddress).0x8702735c with:
                     gas gas_remaining - 25050 wei
                    args stor0, ext_call.return_data[0]
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                call address(eAddress).0x3f9f5b68 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], -1
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                call address(eAddress).0xc4d9102f with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], -1
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                call address(eAddress).0x8389f353 with:
                     gas gas_remaining - 25050 wei
                    args (ext_call.return_data[0] + 1)
                call address(eAddress).0x29de91db with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (100 * call.data[36]) + (10000 * call.data[68]) + 20
            else:
                call address(eAddress).0xd7130651 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[96]
                require ext_call.success
                mem[64] = ceil32(arg1.length) + 928
                idx = ext_call.return_data[640]
                s = ext_call.return_data[96]
                while idx >= 0:
                    call address(eAddress).0xd7130651 with:
                         gas gas_remaining - 25050 wei
                        args idx
                    mem[mem[64] len 672] = ext_call.return_data[0 len 672]
                    require ext_call.success
                    mem[64] = mem[64] + 672
                    idx = ext_call.return_data[640]
                    s = idx
                    continue 
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call address(eAddress).0xc4d9102f with:
                     gas gas_remaining - 25050 wei
                    args s, ext_call.return_data[0]
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                call address(eAddress).0x3f9f5b68 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], s
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                mem[mem[64] + 36] = -1
                call address(eAddress).0xc4d9102f with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], -1
                call address(eAddress).0x24b5c134 with:
                     gas gas_remaining - 25050 wei
                mem[mem[64]] = 0x8389f35300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] + 1
                call address(eAddress).0x8389f353 with:
                     gas gas_remaining - 25050 wei
                    args (ext_call.return_data[0] + 1)
                call address(eAddress).0x29de91db with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (100 * mem[ceil32(arg1.length) + 128]) + (10000 * mem[ceil32(arg1.length) + 160]) + 20
            require ext_call.success
            call address(eAddress).0x74f519db with:
                 gas gas_remaining - 25050 wei
                args stor0, block.timestamp
}



}
