contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor5 = this.address or Mask(96, 160, stor5)
    stor6 = 50
    stor7 = block.number
    stor8 = block.number
    stor9 = 0
    stor10 = 0
    stor11 = 0
    return code.data[141 len 1952]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address owner;
address kingAddress;
address warriorAddress;
uint256 stor4;
address contractAddress;
uint256 rewardPercent;
uint256 kingBlock;
uint256 warriorBlock;
uint256 randomNumber;
uint256 singleDigitBlock;
uint256 warriorGold;

function owner() payable {
    return owner
}

function singleDigitBlock() payable {
    return singleDigitBlock
}

function warriorBlock() payable {
    return warriorBlock
}

function king() payable {
    return kingAddress
}

function randomNumber() payable {
    return randomNumber
}

function rewardPercent() payable {
    return rewardPercent
}

function warriorGold() payable {
    return warriorGold
}

function warrior() payable {
    return address(warriorAddress)
}

function kingBlock() payable {
    return kingBlock
}

function contractAddress() payable {
    return contractAddress
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function enter() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
        warriorGold = msg.value
        warriorBlock = block.number
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        mem[292] = mem[312 len 12]
        call address(ext_call.return_data[0]).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args Array(len=12, data=mem[292])
        require ext_call.success
        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
            mem[356] = mem[376 len 12]
            mem[420] = Mask(208, 24, 'random number between 1 and 9') >> 24, mem[449 len 3]
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 12, mem[356], 29, mem[420]
            require ext_call.success
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
        warriorGold = msg.value
        warriorBlock = block.number
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        mem[292] = mem[312 len 12]
        call address(ext_call.return_data[0]).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args Array(len=12, data=mem[292])
        require ext_call.success
        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
            mem[356] = mem[376 len 12]
            mem[420] = Mask(208, 24, 'random number between 1 and 9') >> 24, mem[449 len 3]
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 12, mem[356], 29, mem[420]
            require ext_call.success
}

function process_payment() payable {
    idx = warriorBlock
    while idx > 10^6:
        idx = idx - 10^6
        continue 
    s = idx
    while s > 100000:
        s = s - 100000
        continue 
    idx = s
    while idx > 10000:
        idx = idx - 10000
        continue 
    s = idx
    while s > 1000:
        s = s - 1000
        continue 
    idx = s
    while idx > 100:
        idx = idx - 100
        continue 
    s = idx
    while s > 10:
        s = s - 10
        continue 
    singleDigitBlock = s
    if s != randomNumber:
        if kingBlock - warriorBlock <= 2000:
            call kingAddress with:
               value rewardPercent / 100 * eth.balance(contractAddress) wei
                 gas 0 wei
        else:
            call kingAddress with:
                 gas 0 wei
    else:
        rewardPercent = 50
        if warriorGold > 2775 * 10^11 * 24 * 3600:
            rewardPercent = 75
        kingAddress = address(warriorAddress)
        kingBlock = warriorBlock
        if kingBlock - warriorBlock <= 2000:
            call kingAddress with:
               value rewardPercent / 100 * eth.balance(contractAddress) wei
                 gas 0 wei
        else:
            call kingAddress with:
                 gas 0 wei
    call owner with:
       value eth.balance(contractAddress) wei
         gas 0 wei
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    require msg.sender == ext_call.return_data[12 len 20]
    require 0 < arg2.length
    randomNumber = mem[128 len 1] - 45
    idx = warriorBlock
    while idx > 10^6:
        idx = idx - 10^6
        continue 
    s = idx
    while s > 100000:
        s = s - 100000
        continue 
    idx = s
    while idx > 10000:
        idx = idx - 10000
        continue 
    s = idx
    while s > 1000:
        s = s - 1000
        continue 
    idx = s
    while idx > 100:
        idx = idx - 100
        continue 
    s = idx
    while s > 10:
        s = s - 10
        continue 
    singleDigitBlock = s
    if s != randomNumber:
        if kingBlock - warriorBlock <= 2000:
            call kingAddress with:
               value rewardPercent / 100 * eth.balance(contractAddress) wei
                 gas 0 wei
        else:
            call kingAddress with:
                 gas 0 wei
    else:
        rewardPercent = 50
        if warriorGold > 2775 * 10^11 * 24 * 3600:
            rewardPercent = 75
        kingAddress = address(warriorAddress)
        kingBlock = warriorBlock
        if kingBlock - warriorBlock <= 2000:
            call kingAddress with:
               value rewardPercent / 100 * eth.balance(contractAddress) wei
                 gas 0 wei
        else:
            call kingAddress with:
                 gas 0 wei
    call owner with:
       value eth.balance(contractAddress) wei
         gas 0 wei
}



}
