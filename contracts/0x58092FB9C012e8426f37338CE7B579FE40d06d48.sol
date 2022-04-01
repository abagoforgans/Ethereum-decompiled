contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
big512 stor1;
address stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b
    require not msg.value
    mem[96 len -323] = code.data[1282 len -323]
    _3 = mem[128]
    _6 = mem[224]
    mem[64] = -131
    uint256(stor1) = mem[192]
    stor2 = mem[108 len 20]
    stor3[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor4 = mem[128]
    stor5 = mem[160]
    mem[65] = mem[128]
    mem[97 len 64] = mem[160], uint256(stor1)
    mem[161] = mem[mem[224] + 96]
    _61 = mem[mem[224] + 96]
    if not mem[mem[224] + 96]:
        if not mem[mem[224] + 96] % 32:
            if ext_code.size(stor0):
                call stor0.0xa2eb203a with:
                     gas gas_remaining - 710 wei
                    args this.address, 0, 192, 0, -35, mem[96 len -31], _3, Mask(512, 0, stor1), mem[161 len mem[mem[224] + 96] + 32]
                if ext_call.success:
                    return code.data[959 len 323]
        else:
            mem[floor32(mem[mem[224] + 96]) + 193] = mem[floor32(mem[mem[224] + 96]) + -(mem[mem[224] + 96] % 32) + 225 len mem[mem[224] + 96] % 32]
            if ext_code.size(stor0):
                call stor0.0xa2eb203a with:
                     gas gas_remaining - 710 wei
                    args this.address, 0, 192, 0, -35, mem[96 len -31], _3, Mask(512, 0, stor1), mem[161 len floor32(_61) + 64]
                if ext_call.success:
                    return code.data[959 len 323]
    else:
        mem[193] = mem[mem[224] + 128]
        mem[225 len floor32(_61 - 1)] = mem[_6 + 160 len floor32(_61 - 1)]
        if not _61 % 32:
            if ext_code.size(stor0):
                call stor0.0xa2eb203a with:
                     gas gas_remaining - 710 wei
                    args this.address, 0, 192, 0, -35, mem[96 len -31], _3, Mask(512, 0, stor1), mem[161 len _61 + 32]
                if ext_call.success:
                    return code.data[959 len 323]
        else:
            mem[floor32(_61) + 193] = mem[floor32(_61) + -(_61 % 32) + 225 len _61 % 32]
            if ext_code.size(stor0):
                call stor0.0xa2eb203a with:
                     gas gas_remaining - 710 wei
                    args this.address, 0, 192, 0, -35, mem[96 len -31], _3, Mask(512, 0, stor1), mem[161 len floor32(_61) + 64]
                if ext_call.success:
                    return code.data[959 len 323]
    revert
}



// =====================  Runtime code  =====================


uint256 stor1;
address stor2;
uint256 stor5;

function payout() {
    if block.timestamp < stor1:
        return 0
    call stor2 with:
       value stor5 wei
         gas gas_remaining - 34710 wei
    return bool(ext_call.success)
}

function _fallback() {
    if eth.balance(this.address) > stor5:
        if block.timestamp >= stor1:
            call stor2 with:
               value stor5 wei
                 gas gas_remaining - 34710 wei
}



}
