contract main {


// =======================  Init code  ======================


uint16 stor0;
uint16 stor0; offset 16
address stor0; offset 48
uint128 stor1;
uint256 stor2;
uint8 stor3;
mapping of struct stor7;
array of address stor8;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    mem[96 len -3866] = code.data[5059 len -3866]
    _5 = mem[192]
    require mem[126 len 2] >= 1
    require mem[126 len 2] <= 30
    uint16(stor0.field_0) = mem[126 len 2]
    require mem[144 len 16] >= 10^15
    require mem[144 len 16] <= 10 * 10^18
    stor1 = mem[144 len 16]
    require mem[160] >= block.timestamp + (24 * 3600)
    stor2 = mem[160]
    require mem[254 len 2] <= 20
    uint16(stor0.field_16) = mem[254 len 2]
    address(stor0.field_48) = msg.sender
    require not uint8(stor7[address(msg.sender)].field_264)
    mem[64] = -3674
    mem[-3770] = 0
    mem[-3738] = 0
    mem[-3706] = 1
    mem[32] = 7
    stor7[address(msg.sender)].field_0 = 0
    uint8(stor7[address(msg.sender)].field_256) = 0
    stor7[address(msg.sender)].field_512 % 1 = 0
    uint8(stor7[address(msg.sender)].field_264) = 1
    stor8.length++
    if not stor8.length > stor8.length + 1:
        mem[0] = 8
        address(stor8[stor8.length]) = msg.sender
        _40 = mem[mem[192] + 96]
        idx = 0
        while uint16(idx) < _40:
            require uint16(idx) < mem[_5 + 96]
            _42 = mem[(32 * uint16(idx)) + _5 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _5 + 140 len 20]
            mem[32] = 7
            require not uint8(stor7[mem[(32 * uint16(idx)) + _5 + 140 len 20]].field_264)
            _45 = mem[64]
            mem[64] = mem[64] + 96
            mem[_45] = 0
            mem[_45 + 32] = 0
            mem[_45 + 64] = 1
            mem[32] = 7
            stor7[address(_42)].field_0 = 0
            uint8(stor7[address(_42)].field_256) = 0
            stor7[address(_42)].field_512 % 1 = 0
            uint8(stor7[address(_42)].field_264) = 1
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                s = sha3(8) + stor8.length + 1
                while sha3(8) + stor8.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 8
            address(stor8[stor8.length]) = address(_42)
            idx = idx + 1
            continue 
    else:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
        mem[0] = 8
        address(stor8[stor8.length]) = msg.sender
        _65 = mem[mem[192] + 96]
        idx = 0
        while uint16(idx) < _65:
            require uint16(idx) < mem[_5 + 96]
            _67 = mem[(32 * uint16(idx)) + _5 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _5 + 140 len 20]
            mem[32] = 7
            require not uint8(stor7[mem[(32 * uint16(idx)) + _5 + 140 len 20]].field_264)
            _70 = mem[64]
            mem[64] = mem[64] + 96
            mem[_70] = 0
            mem[_70 + 32] = 0
            mem[_70 + 64] = 1
            mem[32] = 7
            stor7[address(_67)].field_0 = 0
            uint8(stor7[address(_67)].field_256) = 0
            stor7[address(_67)].field_512 % 1 = 0
            uint8(stor7[address(_67)].field_264) = 1
            stor8.length++
            mem[0] = 8
            if not stor8.length <= stor8.length + 1:
                s = sha3(8) + stor8.length + 1
                while sha3(8) + stor8.length > s:
                    stor[s] = 0
                    _65 = mem[_5 + 96]
                    s = s + 1
                    continue 
            address(stor8[stor8.length]) = address(_67)
            _65 = mem[_5 + 96]
            idx = idx + 1
            continue 
    return code.data[1193 len 3866]
}



// =====================  Runtime code  =====================


uint16 stor0;
uint16 stor0; offset 16
uint16 stor0; offset 32
uint128 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint64 stor6;
uint128 stor6; offset 64
address stor6;
mapping of struct stor7;
array of uint64 stor8;

function _fallback() payable {
    revert 
}

function contribute() payable {
    require stor7[address(msg.sender)].field_264
    require not stor3
    stor7[address(msg.sender)].field_0 += msg.value
    emit LogContributionMade(msg.sender, msg.value);
}

function bid(uint256 arg1) {
    require not stor7[address(msg.sender)].field_256
    require uint16(stor0.field_32)
    require stor8.length
    require stor7[address(msg.sender)].field_0 + (stor4 / stor8.length) >= uint128(uint16(stor0.field_32) * stor1)
    require arg1 >= 65 * stor1 * stor8.length / 100
    if arg1 >= stor5:
        emit LogUnsuccessfulBid(msg.sender, arg1, stor5);
    else:
        stor5 = arg1
        address(stor6.field_0) = msg.sender
        emit LogNewLowestBid(stor5, address(stor6.field_0));
}

function withdraw() {
    require stor7[address(msg.sender)].field_264
    require stor8.length
    require uint128(uint16(stor0.field_32) * stor1) < stor7[address(msg.sender)].field_0 + (stor4 / stor8.length)
    if eth.balance(this.address) >= stor7[address(msg.sender)].field_0 + (stor4 / stor8.length) - uint128(uint16(stor0.field_32) * stor1):
        stor7[address(msg.sender)].field_0 = -(stor4 / stor8.length) + uint128(uint16(stor0.field_32) * stor1)
        call msg.sender with:
           value stor7[address(msg.sender)].field_0 + (stor4 / stor8.length) - uint128(uint16(stor0.field_32) * stor1) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit LogFundsWithdrawal(msg.sender, stor7[address(msg.sender)].field_0 + (stor4 / stor8.length) - uint128(uint16(stor0.field_32) * stor1));
            return 1
        stor7[address(msg.sender)].field_0 = (2 * stor7[address(msg.sender)].field_0) + (stor4 / stor8.length) - uint128(uint16(stor0.field_32) * stor1)
    else:
        emit 0xbbf9c255: stor7[address(msg.sender)].field_0 + (stor4 / stor8.length) - uint128(uint16(stor0.field_32) * stor1), eth.balance(this.address)
        stor7[address(msg.sender)].field_0 -= eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit LogFundsWithdrawal(msg.sender, eth.balance(this.address));
            return 1
        stor7[address(msg.sender)].field_0 += eth.balance(this.address)
    return 0
}

function startRound() {
    require not stor3
    require block.timestamp >= stor2 + (24 * 3600 * uint16(stor0.field_32) * uint16(stor0.field_0))
    if uint16(stor0.field_32):
        if address(stor6.field_0):
            stor4 = stor4 + (stor1 * stor8.length) - stor5
            stor7[address(stor6.field_0)].field_0 = stor7[address(stor6.field_0)].field_0 + stor5 - (stor5 / 1000 * uint16(stor0.field_16))
            stor7[address(stor6.field_0)].field_256 = 1
            emit LogRoundFundsReleased(address(stor6.field_0), stor5);
        else:
            require stor8.length
            s = 0
            idx = 0
            while uint16(idx) < stor8.length:
                require stor8.length
                require (block.timestamp % stor8.length) + uint16(idx) % stor8.length < stor8.length
                mem[0] = address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])
                mem[32] = 7
                if stor7[address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])].field_256:
                    s = address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])
                    idx = idx + 1
                    continue 
                require stor8.length
                mem[0] = address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])
                mem[32] = 7
                if stor7[address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])].field_0 + (stor4 / stor8.length) < uint128(uint16(stor0.field_32) * stor1):
                    s = address(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])
                    idx = idx + 1
                    continue 
                require stor8.length
                require (block.timestamp % stor8.length) + uint16(idx) % stor8.length < stor8.length
                uint64(stor6.field_0) = uint64(stor8[(block.timestamp % stor8.length) + uint16(idx) % stor8.length])
                Mask(96, 0, stor6.field_64) = 0
                stor5--
                if not address(stor6.field_0):
                    emit LogRoundNoWinner(uint16(stor0.field_32));
                else:
                    stor4 = stor4 + (stor1 * stor8.length) - stor5
                    stor7[address(stor6.field_0)].field_0 = stor7[address(stor6.field_0)].field_0 + stor5 - (stor5 / 1000 * uint16(stor0.field_16))
                    stor7[address(stor6.field_0)].field_256 = 1
                    emit LogRoundFundsReleased(address(stor6.field_0), stor5);
                if uint16(stor0.field_32) >= stor8.length:
                    stor3 = 1
                else:
                    stor5 = (stor1 * stor8.length) + 1
                    address(stor6.field_0) = 0
                    uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                    emit LogStartOfRound(uint16(stor0.field_32));
            stor5--
            if not address(stor6.field_0):
                emit LogRoundNoWinner(uint16(stor0.field_32));
            else:
                stor4 = stor4 + (stor1 * stor8.length) - stor5
                stor7[address(stor6.field_0)].field_0 = stor7[address(stor6.field_0)].field_0 + stor5 - (stor5 / 1000 * uint16(stor0.field_16))
                stor7[address(stor6.field_0)].field_256 = 1
                emit LogRoundFundsReleased(address(stor6.field_0), stor5);
    if uint16(stor0.field_32) >= stor8.length:
        stor3 = 1
    else:
        stor5 = (stor1 * stor8.length) + 1
        address(stor6.field_0) = 0
        uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
        emit LogStartOfRound(uint16(stor0.field_32));
}



}
