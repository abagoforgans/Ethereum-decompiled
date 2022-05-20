contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;

function _fallback() payable {
  stop
}

function setCEO(address arg1) {
    require msg.sender == stor0
    require arg1
    stor1 = arg1
}

function setCTO(address arg1) {
    require msg.sender == stor0
    require arg1
    stor0 = arg1
}

function payout(address arg1) {
    require msg.sender == stor0
    if arg1:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function createRoom(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 96
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 256] = 96
    mem[ceil32(arg1.length) + 288] = arg2
    mem[ceil32(arg1.length) + 320] = 0
    mem[ceil32(arg1.length) + 352] = 96
    stor2.length++
    uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    stor4057[stor2.length] = arg2
    stor4057[stor2.length] = 0
    stor4057[stor2.length] = arg1.length
    if not arg1.length:
        idx = 0
        while stor4057[stor2.length] > idx:
            stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor[s + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor4057[stor2.length] > idx:
            stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)] = 0
            idx = idx + 1
            continue 
}

function refundPlayersInRoom(uint256 arg1) {
    require msg.sender == stor0
    require arg1 - 1 < stor2.length
    require uint256(stor2[arg1 - 1].field_768)
    idx = 0
    while idx < uint256(stor2[arg1 - 1].field_768):
        mem[0] = (4 * arg1 - 1) + sha3(2) + 3
        call stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0 with:
           value uint256(stor2[arg1 - 1].field_512) / uint256(stor2[arg1 - 1].field_768) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(stor2[arg1 - 1].field_512) -= uint256(stor2[arg1 - 1].field_512) / uint256(stor2[arg1 - 1].field_768)
        idx = idx + 1
        continue 
    if not uint256(stor2[arg1 - 1].field_768):
        emit roomRefunded(uint256 arg1, address[] arg2):
                          arg1,
                          64,
                          uint256(stor2[arg1 - 1].field_768),
    else:
        mem[192] = stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0
        idx = 192
        s = 0
        while (32 * uint256(stor2[arg1 - 1].field_768)) + 192 > idx + 32:
            mem[idx + 32] = stor[s + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit roomRefunded(arg1, Array(len=uint256(stor2[arg1 - 1].field_768), data=mem[192 len 32 * uint256(stor2[arg1 - 1].field_768)]));
    uint256(stor2[arg1 - 1].field_768) = 0
    idx = 0
    while uint256(stor2[arg1 - 1].field_768) > idx:
        uint256(stor[idx + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = 0
        idx = idx + 1
        continue 
}

function getRoom(uint256 arg1) {
    require arg1 - 1 < stor2.length
    mem[128] = uint256(stor2[arg1 - 1].field_0)
    idx = 128
    s = 0
    while stor2[arg1 - 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor2[(4 * arg1 - 1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(stor2[arg1 - 1].field_768):
        mem[ceil32(stor2[arg1 - 1].length) + 160] = stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0
        idx = ceil32(stor2[arg1 - 1].length) + 160
        s = 0
        while ceil32(stor2[arg1 - 1].length) + (32 * uint256(stor2[arg1 - 1].field_768)) + 128 > idx:
            mem[idx + 32] = stor[s + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[ceil32(stor2[arg1 - 1].length) + (32 * uint256(stor2[arg1 - 1].field_768)) + 320 len ceil32(stor2[arg1 - 1].length)] = mem[128 len ceil32(stor2[arg1 - 1].length)]
    mem[stor2[arg1 - 1].length + ceil32(stor2[arg1 - 1].length) + (32 * uint256(stor2[arg1 - 1].field_768)) + 320] = uint256(stor2[arg1 - 1].field_768)
    mem[stor2[arg1 - 1].length + ceil32(stor2[arg1 - 1].length) + (32 * uint256(stor2[arg1 - 1].field_768)) + 352 len floor32(uint256(stor2[arg1 - 1].field_768))] = mem[ceil32(stor2[arg1 - 1].length) + 160 len floor32(uint256(stor2[arg1 - 1].field_768))]
    return Array(len=stor2[arg1 - 1].length, data=mem[128 len ceil32(stor2[arg1 - 1].length)], mem[(2 * ceil32(stor2[arg1 - 1].length)) + (32 * uint256(stor2[arg1 - 1].field_768)) + 320 len (32 * uint256(stor2[arg1 - 1].field_768)) + stor2[arg1 - 1].length + -ceil32(stor2[arg1 - 1].length) + 32]), 
           stor2[arg1 - 1].length + 160,
           uint256(stor2[arg1 - 1].field_256),
           uint256(stor2[arg1 - 1].field_512)
}

function executeRoom(uint256 arg1) {
    require arg1 - 1 < stor2.length
    require 6 == uint256(stor2[arg1 - 1].field_768)
    call stor0 with:
       value uint256(stor2[arg1 - 1].field_256) / 20 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value uint256(stor2[arg1 - 1].field_256) / 20 wei
         gas 2300 * is_zero(value) wei
    uint256(stor2[arg1 - 1].field_512) -= 2 * uint256(stor2[arg1 - 1].field_256) / 20
    require arg1 - 1 < stor2.length
    require sha3(block.timestamp, block.difficulty) % 6 < uint256(stor2[arg1 - 1].field_768)
    idx = 0
    s = 0
    while idx < 6:
        if sha3(block.timestamp, block.difficulty) % 6 == idx:
            idx = idx + 1
            s = s
            continue 
        require idx < uint256(stor2[arg1 - 1].field_768)
        call stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0 with:
           value uint256(stor2[arg1 - 1].field_512) / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(stor2[arg1 - 1].field_512) -= uint256(stor2[arg1 - 1].field_512) / 5
        require idx < uint256(stor2[arg1 - 1].field_768)
        mem[0] = (4 * arg1 - 1) + sha3(2) + 3
        require s < 5
        mem[(32 * s) + 128] = stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    mem[416 len 0] = None
    emit partyOver(arg1, stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + (('map', 'timestamp', 'difficulty') % 6)].field_0, Array(len=5, data=mem[416 len 160]));
    uint256(stor2[arg1 - 1].field_768) = 0
    idx = 0
    while uint256(stor2[arg1 - 1].field_768) > idx:
        uint256(stor[idx + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = 0
        idx = idx + 1
        continue 
}

function enter(uint256 arg1) payable {
    require arg1 - 1 < stor2.length
    require uint256(stor2[arg1 - 1].field_768) < 6
    require msg.value >= uint256(stor2[arg1 - 1].field_256)
    uint256(stor2[arg1 - 1].field_768)++
    uint256(stor[uint256(stor2[arg1 - 1].field_768) + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor2[arg1 - 1].field_768) + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0))
    uint256(stor2[arg1 - 1].field_512) += uint256(stor2[arg1 - 1].field_256)
    emit newPlayer(arg1, msg.sender);
    if 6 == uint256(stor2[arg1 - 1].field_768):
        require arg1 - 1 < stor2.length
        require 6 == uint256(stor2[arg1 - 1].field_768)
        call stor0 with:
           value uint256(stor2[arg1 - 1].field_256) / 20 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value uint256(stor2[arg1 - 1].field_256) / 20 wei
             gas 2300 * is_zero(value) wei
        uint256(stor2[arg1 - 1].field_512) -= 2 * uint256(stor2[arg1 - 1].field_256) / 20
        require arg1 - 1 < stor2.length
        require sha3(block.timestamp, block.difficulty) % 6 < uint256(stor2[arg1 - 1].field_768)
        idx = 0
        s = 0
        while idx < 6:
            if sha3(block.timestamp, block.difficulty) % 6 == idx:
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(stor2[arg1 - 1].field_768)
            call stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0 with:
               value uint256(stor2[arg1 - 1].field_512) / 5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(stor2[arg1 - 1].field_512) -= uint256(stor2[arg1 - 1].field_512) / 5
            require idx < uint256(stor2[arg1 - 1].field_768)
            mem[0] = (4 * arg1 - 1) + sha3(2) + 3
            require s < 5
            mem[(32 * s) + 128] = stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0
            idx = idx + 1
            s = s + 1
            continue 
        mem[416 len 0] = None
        emit partyOver(arg1, stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + (('map', 'timestamp', 'difficulty') % 6)].field_0, Array(len=5, data=mem[416 len 160]));
        uint256(stor2[arg1 - 1].field_768) = 0
        idx = 0
        while uint256(stor2[arg1 - 1].field_768) > idx:
            uint256(stor[idx + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = 0
            idx = idx + 1
            continue 
}

function enterWithReferral(uint256 arg1, address arg2) payable {
    require arg1 - 1 < stor2.length
    require uint256(stor2[arg1 - 1].field_768) < 6
    require msg.value >= uint256(stor2[arg1 - 1].field_256)
    call arg2 with:
       value uint256(stor2[arg1 - 1].field_256) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor2[arg1 - 1].field_768)++
    uint256(stor[uint256(stor2[arg1 - 1].field_768) + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor2[arg1 - 1].field_768) + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0))
    uint256(stor2[arg1 - 1].field_512) = uint256(stor2[arg1 - 1].field_256) - (uint256(stor2[arg1 - 1].field_256) / 100) + uint256(stor2[arg1 - 1].field_512)
    emit newPlayer(arg1, msg.sender);
    if 6 == uint256(stor2[arg1 - 1].field_768):
        emit fullRoom(arg1);
        require arg1 - 1 < stor2.length
        require 6 == uint256(stor2[arg1 - 1].field_768)
        call stor0 with:
           value uint256(stor2[arg1 - 1].field_256) / 20 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value uint256(stor2[arg1 - 1].field_256) / 20 wei
             gas 2300 * is_zero(value) wei
        uint256(stor2[arg1 - 1].field_512) -= 2 * uint256(stor2[arg1 - 1].field_256) / 20
        require arg1 - 1 < stor2.length
        require sha3(block.timestamp, block.difficulty) % 6 < uint256(stor2[arg1 - 1].field_768)
        idx = 0
        s = 0
        while idx < 6:
            if sha3(block.timestamp, block.difficulty) % 6 == idx:
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(stor2[arg1 - 1].field_768)
            call stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0 with:
               value uint256(stor2[arg1 - 1].field_512) / 5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(stor2[arg1 - 1].field_512) -= uint256(stor2[arg1 - 1].field_512) / 5
            require idx < uint256(stor2[arg1 - 1].field_768)
            mem[0] = (4 * arg1 - 1) + sha3(2) + 3
            require s < 5
            mem[(32 * s) + 128] = stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + idx].field_0
            idx = idx + 1
            s = s + 1
            continue 
        mem[416 len 0] = None
        emit partyOver(arg1, stor[sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3) + (('map', 'timestamp', 'difficulty') % 6)].field_0, Array(len=5, data=mem[416 len 160]));
        uint256(stor2[arg1 - 1].field_768) = 0
        idx = 0
        while uint256(stor2[arg1 - 1].field_768) > idx:
            uint256(stor[idx + sha3((4 * arg1 - 1) + ('name', 'stor2', 2) + 3)].field_0) = 0
            idx = idx + 1
            continue 
}



}
