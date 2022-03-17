contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 110
    stor2 = 1
    stor3 = 5 * 10^16
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[57 len 2158]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_1ff6c705;
uint256 feePercent;
uint256 minPrice;

function sub_1ff6c705(?) payable {
    return sub_1ff6c705
}

function feePercent() payable {
    return feePercent
}

function owner() payable {
    return owner
}

function minPrice() payable {
    return minPrice
}

function _fallback() payable {
  stop
}

function sub_d229b54b(?) payable {
    if msg.sender == owner:
        sub_1ff6c705 = arg1
}

function setMinPrice(uint256 arg1) payable {
    if msg.sender == owner:
        feePercent = arg1
}

function setFeePercent(uint256 arg1) payable {
    if msg.sender == owner:
        minPrice = arg1
}

function empty() payable {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function pixels(uint256 arg1, uint256 arg2) payable {
    require arg1 < 1000
    require arg2 < 1000
    return address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0), 
           uint256(stor[(4 * arg2) + (4000 * arg1) + 5].field_0),
           uint256(stor[(4 * arg2) + (4000 * arg1) + 6].field_0),
           uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0)
}

function getRow(uint256 arg1) payable {
    mem[96] = 0
    mem[128 len 31968] = 0
    mem[32096] = 0
    mem[32128 len 31968] = 0
    mem[64096] = 0
    mem[64128 len 31968] = 0
    idx = 0
    while idx < 1000:
        require arg1 < 1000
        require idx < 1000
        mem[(32 * idx) + 96] = address(stor[(4 * arg1) + (4000 * idx) + 4].field_0)
        require arg1 < 1000
        require idx < 1000
        mem[(32 * idx) + 32096] = uint256(stor[(4 * arg1) + (4000 * idx) + 6].field_0)
        require arg1 < 1000
        require idx < 1000
        mem[(32 * idx) + 64096] = uint256(stor[(4 * arg1) + (4000 * idx) + 7].field_0)
        idx = idx + 1
        continue 
    return mem[96 len 32000], mem[32096 len 32000], mem[64096 len 32000]
}

function sub_c943e51a(?) payable {
    if arg1 < 0:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='X must be > 0 and < 1000.'), arg1
        return 0
    if arg1 >= 1000:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='X must be > 0 and < 1000.'), arg1
        return 0
    if arg2 < 0:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='Y must be > 0 and < 1000.'), arg2
        return 0
    if arg2 >= 1000:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='Y must be > 0 and < 1000.'), arg2
        return 0
    if msg.value < minPrice:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=33, data='Minimum pixel price is 50 finney', '.'), msg.value
        return 0
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if 100 * msg.value < uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) * sub_1ff6c705:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.'), sub_1ff6c705 * uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) / 100
        return 0
    if address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) > 0:
        call address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) with:
           value msg.value - (msg.value * feePercent / 100) wei
             gas 0 wei
    require arg1 < 1000
    require arg2 < 1000
    uint256(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) = Mask(96, 0, stor[(4 * arg2) + (4000 * arg1) + 4].field_160)
    uint256(stor[(4 * arg2) + (4000 * arg1) + 5].field_0) = block.number
    uint256(stor[(4 * arg2) + (4000 * arg1) + 6].field_0) = arg3
    uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) = msg.value
    emit 0x26f34cb6: arg1, arg2, address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0), uint256(stor[(4 * arg2) + (4000 * arg1) + 6].field_0), uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0), msg.sender, arg3, msg.value
    return 1
}

function sub_f46a85a9(?) payable {
    if arg1 < 0:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='X must be > 0 and < 1000.'), arg1
        return 0
    if arg1 >= 1000:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='X must be > 0 and < 1000.'), arg1
        return 0
    if arg2 < 0:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='Y must be > 0 and < 1000.'), arg2
        return 0
    if arg2 >= 1000:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=25, data='Y must be > 0 and < 1000.'), arg2
        return 0
    if msg.value < minPrice:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=33, data='Minimum pixel price is 50 finney', '.'), msg.value
        return 0
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if 100 * msg.value < uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) * sub_1ff6c705:
        emit code.data[2126 len 32]: address(msg.sender), Array(len=50, data='Value must be 10% higher than cu', 'rrent pixel price.'), sub_1ff6c705 * uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) / 100
        return 0
    if address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) > 0:
        call address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) with:
           value msg.value - (msg.value * feePercent / 100) wei
             gas 0 wei
    require arg1 < 1000
    require arg2 < 1000
    uint256(stor[(4 * arg2) + (4000 * arg1) + 4].field_0) = Mask(96, 0, stor[(4 * arg2) + (4000 * arg1) + 4].field_160)
    uint256(stor[(4 * arg2) + (4000 * arg1) + 5].field_0) = block.number
    uint256(stor[(4 * arg2) + (4000 * arg1) + 6].field_0) = (1048576 * arg6) + (65536 * arg3) + (256 * arg4) + arg5
    uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0) = msg.value
    emit 0x26f34cb6: arg1, arg2, address(stor[(4 * arg2) + (4000 * arg1) + 4].field_0), uint256(stor[(4 * arg2) + (4000 * arg1) + 6].field_0), uint256(stor[(4 * arg2) + (4000 * arg1) + 7].field_0), msg.sender, (1048576 * arg6) + (65536 * arg3) + (256 * arg4) + arg5, msg.value
    return 1
}



}
