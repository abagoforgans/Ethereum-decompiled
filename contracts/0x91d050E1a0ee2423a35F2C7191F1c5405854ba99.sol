contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 4321]




// =====================  Runtime code  =====================


array of struct created;

function created(address arg1, uint256 arg2) payable {
    require arg2 < created[arg1].field_0
    return created[arg1][arg2].field_0
}

function _fallback() payable {
  stop
}

function createdByMe() payable {
    if created[address(msg.sender)].field_0:
        mem[160] = created[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * created[address(msg.sender)].field_0) + 128 > idx:
            mem[idx + 32] = created[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=created[address(msg.sender)].field_0, data=mem[160 len 32 * created[address(msg.sender)].field_0])
}

function createStandardToken(uint256 arg1) payable {
    create contract with 0 wei
                    code: code.data[1122 len 3199], arg1
    call address(create.new_address).sendCoin(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args arg1, msg.sender
    require ext_call.success
    created[address(msg.sender)].field_0++
    if not created[address(msg.sender)].field_0 <= created[address(msg.sender)].field_0 + 1:
        idx = created[address(msg.sender)].field_0 + 1
        while created[address(msg.sender)].field_0 > idx:
            created[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    require created[address(msg.sender)].field_0 < created[address(msg.sender)].field_0
    created[address(msg.sender)][created[address(msg.sender)].field_0].field_0 = create.new_address or Mask(96, 160, created[address(msg.sender)][created[address(msg.sender)].field_0].field_0)
    created[address(msg.sender)].field_0++
    if not created[address(msg.sender)].field_0 <= created[address(msg.sender)].field_0 + 1:
        idx = created[address(msg.sender)].field_0 + 1
        while created[address(msg.sender)].field_0 > idx:
            created[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}



}
