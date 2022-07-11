contract main {




// =====================  Runtime code  =====================


uint256 roundNumber;
address adminAddress;
array of address players;

function roundNumber() {
    return roundNumber
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return address(players[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require tx.origin == msg.sender
    if msg.value >= 2 * 10^17:
        players.length++
        mem[0] = 2
        uint256(players[players.length]) = msg.sender or Mask(96, 160, uint256(players[players.length]))
        emit 0x1af3d134: msg.sender, roundNumber
        if players.length == 2:
            mem[128] = block.hash(block.number - players.length)
            mem[160] = block.timestamp
            mem[96] = 64
            mem[64] = 192
            idx = 0
            s = 0
            while idx <= players.length - 1:
                require idx < players.length
                mem[0] = 2
                mem[mem[64] + 32] = block.hash(block.number - idx)
                mem[mem[64] + 64] = address(players[idx]) xor s + sha3(mem[128 len mem[96]])
                _26 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_26 + 32 len mem[_26]]) xor s
                continue 
            require players.length
            idx = 0
            while idx <= players.length - 1:
                require idx < players.length
                mem[0] = 2
                if uint8((s % players.length) + 1) == idx + 1:
                    mem[mem[64]] = uint8((s % players.length) + 1)
                    emit 0x9a2dd927: uint8((s % players.length) + 1), address(players[idx])
                else:
                    call address(players[idx]) with:
                       value 35 * 10^16 wei
                         gas 0 wei
                    if ext_call.success:
                        require idx < players.length
                        mem[0] = 2
                        emit LogWinner(address(players[idx]));
                idx = idx + 1
                continue 
            call adminAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            players.length = 0
            if players.length > 0:
                idx = 0
                while players.length > idx:
                    uint256(players[idx]) = 0
                    idx = idx + 1
                    continue 
            roundNumber++
            emit 0x558f1894: (roundNumber + 1)
}



}
