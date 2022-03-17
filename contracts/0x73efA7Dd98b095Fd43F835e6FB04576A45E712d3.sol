contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor8;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor8 = 5 * 10^11
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[87 len 2674]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_4c773795Address;
address stor2;
mapping of uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor7;
uint256 stor8;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function _fallback() payable {
    call msg.sender with:
       value msg.value wei
         gas 0 wei
}

function setGasPrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == sub_4c773795Address
    stor8 = arg1
}

function getPrice(string arg1) payable {
    if stor3[address(msg.sender)] != 0:
        return ((200000 * stor8) + stor5[arg1[all]])
    else:
        return 0
}

function getPrice(string arg1, uint256 arg2) payable {
    if stor3[address(msg.sender)] != 0:
        return ((arg2 * stor8) + stor5[arg1[all]])
    else:
        return 0
}

function setBasePrice(uint256 arg1) payable {
    if stor2 != msg.sender:
        require msg.sender == sub_4c773795Address
    stor4 = arg1
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 5
        stor5[stor7[idx]] = arg1 * stor6[stor7[idx]]
        idx = idx + 1
        continue 
}

function addDSource(string arg1, uint256 arg2) payable {
    if stor2 != msg.sender:
        require msg.sender == sub_4c773795Address
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    require stor7.length < stor7.length
    stor7[stor7.length] = sha3(arg1[all])
    stor6[arg1[all]] = arg2
}

function query(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == (200000 * stor8) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor8) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor8) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor8) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor8) - stor5[arg2[all]] wei
                 gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(block.timestamp + stor0)
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == (200000 * stor8) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor8) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor8) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor8) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor8) - stor5[arg2[all]] wei
                 gas 0 wei
    stor0++
    emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return sha3(block.timestamp + stor0)
}

function query2(uint256 arg1, string arg2, string arg3, string arg4) payable {
    if 0 == stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = 1
        require msg.value >= 0
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
             gas 0 wei
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == (200000 * stor8) + stor5[arg2[all]]:
            stor3[address(msg.sender)] = 1
        require msg.value >= (200000 * stor8) + stor5[arg2[all]]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value (200000 * stor8) + stor5[arg2[all]] wei
             gas 0 wei
        if msg.value - (200000 * stor8) - stor5[arg2[all]] > 0:
            call msg.sender with:
               value msg.value - (200000 * stor8) - stor5[arg2[all]] wei
                 gas 0 wei
    stor0++
    if not arg3.length % 32:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: sha3(stor0 + block.timestamp), arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return sha3(stor0 + block.timestamp)
}



}
