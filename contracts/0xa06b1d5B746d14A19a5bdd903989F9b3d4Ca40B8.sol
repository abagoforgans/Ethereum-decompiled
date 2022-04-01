contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    stor2 = 0x314159265dd8dbb310642f98f50c066173c1259b
    stor3 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor4 = 0x1da022710df5002339274aadee8d58218e9d6ab5
    stor5 = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae
    require not msg.value
    return code.data[413 len 2780]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;
address stor3;

function _fallback() payable {
  stop
}

function createSellENS(string arg1, uint256 arg2) {
    create contract with 0 wei
                    code: code.data[2276 len 461]
    require create.new_address
    stor0[address(create.new_address)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[address(create.new_address)].field_256 = arg2
    stor0[address(create.new_address)].field_512 = msg.sender
    emit SellENSCreated(address(create.new_address));
}

function get_info(address arg1) {
    mem[224] = stor0[arg1].field_0
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256,
           stor0[arg1].field_512
}

function sell_label(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)].field_512
    if arg1 != stor0[address(msg.sender)].field_512:
        call stor1 with:
           value stor0[address(msg.sender)].field_256 / 20 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor0[address(msg.sender)].field_512 with:
           value stor0[address(msg.sender)].field_256 - (stor0[address(msg.sender)].field_256 / 20) wei
             gas 2300 * is_zero(value) wei
        if arg2 > stor0[address(msg.sender)].field_256:
            call arg1 with:
               value arg2 - stor0[address(msg.sender)].field_256 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        call stor1 with:
             gas 2300 wei
        require ext_call.success
        call stor0[address(msg.sender)].field_512 with:
             gas 2300 wei
        if arg2 > 0:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    mem[96] = stor0[address(msg.sender)].field_0
    idx = 96
    s = 0
    while stor0[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = stor0[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[100] = sha3(mem[96 len stor0[address(msg.sender)].length])
    require ext_code.size(stor3)
    call stor3.transfer(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args mem[100], address(arg1)
    require ext_call.success
    emit LabelSold(msg.sender);
}



}
