contract main {


// =======================  Init code  ======================


uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 5
    stor2 = 0
    stor3 = 10000
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[60 len 2058]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint8 sub_4c1a4115;
uint256 stor1;
uint256 balance;
uint256 sub_5a9f6b0b;
address owner;
uint256 stor4;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733350;
array of uint256 stor44851508847536754802816858523428556429728131226063707645725629049383668347877;
array of uint256 stor45756134544703287579563506843808930709831802981264024552283891424445489673189;

function sub_4c1a4115(?) payable {
    return uint8(sub_4c1a4115)
}

function sub_5a9f6b0b(?) payable {
    return sub_5a9f6b0b
}

function owner() payable {
    return address(owner)
}

function balance() payable {
    return balance
}

function sub_9f0fc609(?) payable {
    if msg.sender == address(owner):
        uint256(stor1) = arg1 or Mask(248, 8, uint256(stor1))
}

function SetOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_fd709fd4(?) payable {
    if msg.sender == address(owner):
        call arg1 with:
           value 10^18 * arg2 wei
             gas 0 wei
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor5629[arg1]), stor[(4 * arg1) + code.data[2026 len 32]], stor6329[arg1], stor6529[arg1]
}

function sub_2e219366(?) payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
        require msg.sender < stor0.length
        stor[code.data[2026 len 32] + (4 * address(msg.sender))] += msg.value
}

function Deposit() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 4 * stor0.length + 1
            while 4 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                stor0[idx].field_512 = 0
                stor0[idx].field_768 = 0
                idx = idx + 1
                continue 
        require msg.sender < stor0.length
        uint256(stor5629[4 * address(msg.sender)]) = msg.sender or Mask(96, 160, uint256(stor5629[4 * address(msg.sender)]))
        stor[code.data[2026 len 32] + (4 * address(msg.sender))] = msg.value
        stor6329[4 * address(msg.sender)] = block.timestamp
        stor6529[4 * address(msg.sender)] = sub_5a9f6b0b
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 4 * stor0.length + 1
            while 4 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                stor0[idx].field_512 = 0
                stor0[idx].field_768 = 0
                idx = idx + 1
                continue 
        require msg.sender < stor0.length
        uint256(stor5629[4 * address(msg.sender)]) = msg.sender or Mask(96, 160, uint256(stor5629[4 * address(msg.sender)]))
        stor[code.data[2026 len 32] + (4 * address(msg.sender))] = msg.value
        stor6329[4 * address(msg.sender)] = block.timestamp
        stor6529[4 * address(msg.sender)] = sub_5a9f6b0b
}

function sub_0bb89496(?) payable {
    require msg.sender < stor0.length
    if stor6329[4 * address(msg.sender)] < block.timestamp:
        require msg.sender < stor0.length
        if arg1 <= stor[code.data[2026 len 32] + (4 * address(msg.sender))]:
            require msg.sender < stor0.length
            if balance >= arg1 + (block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * arg1):
                call msg.sender with:
                   value arg1 + (block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * arg1) - ((arg1 * uint8(sub_4c1a4115)) + (block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * arg1 * uint8(sub_4c1a4115)) / 100) wei
                     gas 0 wei
                call address(owner) with:
                   value (arg1 * uint8(sub_4c1a4115)) + (block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * arg1 * uint8(sub_4c1a4115)) / 100 wei
                     gas 0 wei
                require msg.sender < stor0.length
                stor[code.data[2026 len 32] + (4 * address(msg.sender))] -= arg1
                balance = balance - arg1 - (block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * arg1)
}

function sub_bfcd3c64(?) payable {
    require msg.sender < stor0.length
    if stor6329[4 * address(msg.sender)] < block.timestamp:
        if arg1:
            require msg.sender < stor0.length
            if balance >= stor5629[4 * address(msg.sender)] + (stor5629[4 * address(msg.sender)] * block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100):
                call msg.sender with:
                   value stor5629[4 * address(msg.sender)] + (stor5629[4 * address(msg.sender)] * block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100) - ((stor5629[4 * address(msg.sender)] * uint8(sub_4c1a4115)) + (stor5629[4 * address(msg.sender)] * block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * uint8(sub_4c1a4115)) / 100) wei
                     gas 0 wei
                call address(owner) with:
                   value (stor5629[4 * address(msg.sender)] * uint8(sub_4c1a4115)) + (stor5629[4 * address(msg.sender)] * block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100 * uint8(sub_4c1a4115)) / 100 wei
                     gas 0 wei
                require msg.sender < stor0.length
                address(stor5629[4 * address(msg.sender)]) = 0
                stor[(4 * address(msg.sender)) + code.data[2026 len 32]] = 0
                stor6329[4 * address(msg.sender)] = 0
                stor6529[4 * address(msg.sender)] = 0
                balance = balance - stor5629[4 * address(msg.sender)] - (stor5629[4 * address(msg.sender)] * block.timestamp - stor6329[4 * address(msg.sender)] / 720 * 24 * 3600 * stor6529[4 * address(msg.sender)] / 100)
}



}
