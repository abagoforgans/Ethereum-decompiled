contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 3964]




// =====================  Runtime code  =====================


array of struct created;

function created(address arg1, uint256 arg2) payable {
    require arg2 < created[arg1].field_0
    return created[arg1][arg2].field_0
}

function _fallback() payable {
  stop
}

function createStandardToken(uint256 arg1) payable {
    create contract with 0 wei
                    code: code.data[765 len 3199], arg1
    require created[address(msg.sender)].field_0 < created[address(msg.sender)].field_0
    created[address(msg.sender)][created[address(msg.sender)].field_0].field_0 = create.new_address or Mask(96, 160, created[address(msg.sender)][created[address(msg.sender)].field_0].field_0)
    return 0
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



}
