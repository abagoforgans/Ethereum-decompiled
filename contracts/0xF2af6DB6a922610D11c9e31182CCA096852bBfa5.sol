contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
address stor6;
uint256 fee;
uint256 game;
uint256 ticketPrice;
uint256 allTimeJackpot;
uint256 allTimePlayers;
uint256 sub_f96afe87;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8
uint256 stor13;
array of uint256 games;
mapping of uint256 gameJackpot;
array of address playersInGame;
array of address stor17;
mapping of address stor18;
address fundsDistributorAddress;

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1]
}

function ticketPrice() {
    return ticketPrice
}

function getGameJackpot(uint256 arg1) {
    return gameJackpot[arg1]
}

function isActive() {
    return bool(uint8(stor13.field_0))
}

function allTimePlayers() {
    return allTimePlayers
}

function allTimeJackpot() {
    return allTimeJackpot
}

function getPlayersInGame(uint256 arg1) {
    return uint256(playersInGame[arg1])
}

function fundsDistributor() {
    return fundsDistributorAddress
}

function toogleStatus() {
    return bool(uint8(stor13.field_8))
}

function owner() {
    return owner
}

function getPlayedGamePlayers() {
    return uint256(playersInGame[stor8])
}

function game() {
    return game
}

function getPlayedGameJackpot() {
    return gameJackpot[stor8]
}

function fee() {
    return fee
}

function sub_f96afe87(?) {
    return sub_f96afe87
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function addPlayer(address arg1) {
    stor18[address(msg.sender)] = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changeTicketPrice(uint256 arg1) {
    require msg.sender == owner
    ticketPrice = arg1
    emit ChangePrice(arg1);
}

function toogleActive() {
    require msg.sender == owner
    if uint8(stor13.field_0):
        Mask(248, 0, stor13.field_8) = Mask(248, 0, not bool(uint8(stor13.field_8)))
    else:
        uint8(stor13.field_0) = 1
}

function start() {
    require msg.sender == owner
    require uint8(stor13.field_0)
    game = block.number
    if uint8(stor13.field_8):
        uint256(stor13.field_0) = not bool(uint8(stor13.field_0)) or Mask(248, 8, uint256(stor13.field_0))
        Mask(248, 0, stor13.field_8) = 0
    emit Game(game, block.timestamp);
}

function buyTicket(uint256 arg1, uint256 arg2) {
    require uint8(stor13.field_0)
    require arg2 == ticketPrice
    gameJackpot[stor8] = gameJackpot[stor8] + arg2 - (arg2 * fee / 100)
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, fundsDistributorAddress, arg2 * fee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2 - (arg2 * fee / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            uint256(playersInGame[stor8])++
            address(playersInGame[stor8][uint256(playersInGame[stor8])]) = msg.sender
            uint256(stor17[stor8][arg1])++
            address(stor17[stor8][arg1][uint256(stor17[stor8][arg1])]) = msg.sender
    emit Ticket(uint256(playersInGame[stor8]), block.timestamp, arg1, msg.sender, game);
}

function sub_82db4f19(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    if uint256(stor17[stor8][arg1]) <= 0:
        emit Lose(sub_f96afe87, gameJackpot[stor8]);
    else:
        require uint256(stor17[stor8][arg1])
        s = 0
        idx = 0
        while idx < uint256(stor17[stor8][arg1]):
            require idx < uint256(stor17[stor8][arg1])
            mem[0] = sha3(arg1, sha3(game, 17))
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor17[stor8][arg1][idx]), gameJackpot[stor8] / uint256(stor17[stor8][arg1])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            allTimeJackpot += gameJackpot[stor8]
            mem[32] = sha3(game, 17)
            require idx < uint256(stor17[stor8][arg1])
            mem[mem[64]] = address(stor17[stor8][arg1][idx])
            mem[mem[64] + 32] = sub_f96afe87
            mem[mem[64] + 64] = gameJackpot[stor8] / uint256(stor17[stor8][arg1])
            emit Winner(address(stor17[stor8][arg1][idx]), sub_f96afe87, gameJackpot[stor8] / uint256(stor17[stor8][arg1]));
            mem[0] = arg1
            mem[32] = sha3(game, 17)
            s = address(stor17[stor8][arg1][idx])
            idx = idx + 1
            continue 
    allTimePlayers += uint256(playersInGame[stor8])
    sub_f96afe87 = 0
}

function getBTCPrice() payable {
    require msg.sender == owner
    require uint256(playersInGame[stor8]) > 0
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor1):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor2) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor1)
        call stor1.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(address(stor2))
    call address(stor2).getPrice(string arg1) with:
         gas gas_remaining wei
        args 'URL'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        require ext_code.size(address(stor2))
        call address(stor2).query(uint256 arg1, string arg2, string arg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function __callback(bytes32 arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 3
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 3
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 3
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 3
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 3
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 3
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 3
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 192
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 3
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    sub_f96afe87 = s
    emit LogPrice(sub_f96afe87);
}



}
