contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function kill() {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_91930314(?) {
    return (stor3 - stor4)
}

function sub_6ec6333d(?) {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    stor1[address(arg1)] = 0
}

function sub_e77e5ba1(?) payable {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dd0244b2(?) {
    idx = 0
    while idx < arg1:
        mem[96] = 0x756eb3f879cb30fe243b4dfee438691c043314585733ff6000526016600af3
        create contract with 0 wei
                        code: 0x756eb3f879cb30fe243b4dfee438691c043314585733ff6000526016600af3
        idx = idx + 1
        continue 
    stor3 += arg1
    stor5 += arg1
}

function sub_0731133a(?) payable {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
}

function sub_cde6f802(?) {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_84d44cd2(?) {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.depositToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7458ff2(?) {
    if not stor1[msg.sender]:
        require msg.sender == stor0
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = arg6
    mem[292] = arg7
    mem[324] = arg8
    mem[356] = arg9 - 100
    mem[388] = arg10 + 100
    require ext_code.size(stor2)
    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
         gas gas_remaining wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9 - 100, arg10 + 100
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg11:
        mem[96] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        mem[260] = arg6
        mem[292] = arg7
        mem[324] = arg8
        mem[356] = arg9 - 100
        mem[388] = arg10 + 100
        mem[420] = arg11
        require ext_code.size(stor2)
        call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9 - 100, arg10 + 100, arg11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = stor4 + 1
    while idx <= stor4 + 2:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if idx <= 0:
                mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if idx >= 128:
                    mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            call address(sha3(mem[96 len t + 23])) with:
                 gas gas_remaining wei
        else:
            if idx < 128:
                if idx <= 0:
                    mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
        idx = idx + 1
        continue 
    stor4 += 2
}



}
