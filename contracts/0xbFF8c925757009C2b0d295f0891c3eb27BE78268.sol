contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
address stor2;
mapping of uint256 stor3;
uint256 stor4;
uint256 stor5;

function destruct() {
    require msg.sender == stor2
    selfdestruct(stor2)
}

function _fallback() payable {
    revert
}

function destructGame(address arg1) {
    require msg.sender == stor2
    require ext_code.size(arg1)
    call arg1.0x2b68b9c6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setJackpot(address arg1, uint256 arg2) {
    require msg.sender == stor2
    if arg2 > 0:
        require ext_code.size(arg1)
        call arg1.setJackpot() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function submitChoose(address arg1, uint256 arg2) payable {
    if msg.value > 0:
        require ext_code.size(arg1)
        call arg1.submitChooseByFactory(address arg1, uint256 arg2) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getDeployedGames() {
    if stor0.length:
        mem[128] = address(stor0.field_0)
        if (32 * stor0.length) + 32 > 64:
            mem[160] = address(stor0.field_256)
            idx = 160
            s = 1
            while (32 * stor0.length) + 96 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function endGame(address arg1) {
    stor5++
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    require stor0.length - 1 < stor0.length
    require stor3[address(arg1)] - 1 < stor0.length
    stor0[stor3[address(arg1)]].field_0 = stor0[stor0.length].field_0
    require stor0.length - 1 < stor0.length
    stor3[stor0[stor0.length].field_0] = stor3[address(arg1)]
    stor0[stor0.length].field_0 = 0
    stor0.length--
    if stor0.length > stor0.length - 1:
        idx = stor0.length - 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(arg1)
    call arg1.endGame() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getEndedGames() {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function forceEndGame(address arg1) {
    require msg.sender == stor2
    stor5++
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    require stor0.length - 1 < stor0.length
    require stor3[address(arg1)] - 1 < stor0.length
    stor0[stor3[address(arg1)]].field_0 = stor0[stor0.length].field_0
    require stor0.length - 1 < stor0.length
    stor3[stor0[stor0.length].field_0] = stor3[address(arg1)]
    stor0[stor0.length].field_0 = 0
    stor0.length--
    if stor0.length > stor0.length - 1:
        idx = stor0.length - 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(arg1)
    call arg1.forceEndGame() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createGame(uint256 arg1, uint256 arg2, string arg3, address arg4) payable {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == stor2
    stor4++
    mem[ceil32(arg3.length) + 128 len 3734] = code.data[2420 len 3734]
    mem[ceil32(arg3.length) + 4054 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[2420 len 3734], stor4 + 1, arg1, arg2, Array(len=address(arg4), data=arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256)
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 4054] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 4086 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[2420 len 3734], stor4 + 1, arg1, arg2, Array(len=address(arg4), data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 4054 len floor32(arg3.length) + -ceil32(arg3.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length].field_0 = address(create.new_address)
    stor3[address(create.new_address)] = stor0.length
    require msg.sender == stor2
    if msg.value > 0:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setJackpot() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
