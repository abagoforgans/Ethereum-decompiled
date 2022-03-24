contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    mem[96 len 96] = code.data[1028 len 96]
    s = 0
    idx = 0
    while idx < 3:
        mem[0] = mem[(32 * idx) + 108 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 108 len 20]] = idx + 1
        s = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
    return code.data[109 len 919]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of struct stor1;
mapping of struct stor2;

function kill(address arg1) payable {
    require stor0[address(msg.sender)] != 0
    if not stor1[call.data[0 len calldata.size]][block.number].field_0:
        stor1[call.data[0 len calldata.size]][block.number].field_0 = 2
        stor1[call.data[0 len calldata.size]][block.number].field_256 = 0
    if 2^stor0[address(msg.sender)] and stor1[call.data[0 len calldata.size]][block.number].field_256 != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
    stor1[call.data[0 len calldata.size]][block.number].field_0--
    if stor1[call.data[0 len calldata.size]][block.number].field_0 - 1 != 0:
        stor1[call.data[0 len calldata.size]][block.number].field_256 = 2^stor0[address(msg.sender)] or stor1[call.data[0 len calldata.size]][block.number].field_256
    stor1[call.data[0 len calldata.size]][block.number].field_0 = 0
    stor1[call.data[0 len calldata.size]][block.number].field_256 = 0
    selfdestruct(arg1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function confirm(bytes32 arg1) payable {
    require stor0[address(msg.sender)] != 0
    if not stor1[arg1].field_0:
        stor1[arg1].field_0 = 2
        stor1[arg1].field_256 = 0
    if 0 == 2^stor0[address(msg.sender)] and stor1[arg1].field_256:
        emit Confirmation(msg.sender, arg1);
        stor1[arg1].field_0--
        if stor1[arg1].field_0 - 1 != 0:
            stor1[arg1].field_256 = 2^stor0[address(msg.sender)] or stor1[arg1].field_256
        else:
            stor1[arg1].field_0 = 0
            stor1[arg1].field_256 = 0
            require stor2[arg1].field_0
            call stor2[arg1].field_0 with:
               value stor2[arg1].field_256 wei
                 gas 0 wei
            emit Withdrawal(stor2[arg1].field_0, stor2[arg1].field_256);
            stor2[arg1].field_0 = 0
            stor2[arg1].field_256 = 0
}

function withdraw(address arg1, uint256 arg2) payable {
    require stor0[address(msg.sender)] != 0
    if not stor2[call.data[0 len calldata.size]][block.number].field_0:
        stor2[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor2[call.data[0 len calldata.size]][block.number].field_0)
        stor2[call.data[0 len calldata.size]][block.number].field_256 = arg2
    require stor0[address(msg.sender)] != 0
    if not stor1[call.data[0 len calldata.size]][block.number].field_0:
        stor1[call.data[0 len calldata.size]][block.number].field_0 = 2
        stor1[call.data[0 len calldata.size]][block.number].field_256 = 0
    if 0 == 2^stor0[address(msg.sender)] and stor1[call.data[0 len calldata.size]][block.number].field_256:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        stor1[call.data[0 len calldata.size]][block.number].field_0--
        if stor1[call.data[0 len calldata.size]][block.number].field_0 - 1 != 0:
            stor1[call.data[0 len calldata.size]][block.number].field_256 = 2^stor0[address(msg.sender)] or stor1[call.data[0 len calldata.size]][block.number].field_256
        else:
            stor1[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor1[call.data[0 len calldata.size]][block.number].field_256 = 0
            require stor2[call.data[0 len calldata.size]][block.number].field_0
            call stor2[call.data[0 len calldata.size]][block.number].field_0 with:
               value stor2[call.data[0 len calldata.size]][block.number].field_256 wei
                 gas 0 wei
            emit Withdrawal(stor2[call.data[0 len calldata.size]][block.number].field_0, stor2[call.data[0 len calldata.size]][block.number].field_256);
            stor2[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor2[call.data[0 len calldata.size]][block.number].field_256 = 0
    emit 0x15983a6a: sha3(call.data[0 len calldata.size], block.number), msg.sender, address(arg1), arg2
}



}
