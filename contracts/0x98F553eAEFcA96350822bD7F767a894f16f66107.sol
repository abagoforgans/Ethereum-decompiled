contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor11 = 950
    require not msg.value
    stor0 = msg.sender
    require code.data[19247 len 32] > block.timestamp
    require code.data[19407 len 32] > code.data[19247 len 32]
    require code.data[19439 len 32] > code.data[19407 len 32]
    require code.data[19471 len 32] > code.data[19439 len 32]
    require code.data[19503 len 32] > code.data[19471 len 32]
    require code.data[19279 len 32] > code.data[19503 len 32]
    require code.data[19311 len 32] > 0
    require code.data[19343 len 32] > code.data[19311 len 32]
    require code.data[19387 len 20]
    stor2 = code.data[19247 len 32]
    stor3 = code.data[19279 len 32]
    stor4 = code.data[19311 len 32]
    stor5 = code.data[19343 len 32]
    stor6 = code.data[19387 len 20]
    stor7 = code.data[19407 len 32]
    stor8 = code.data[19439 len 32]
    stor9 = code.data[19471 len 32]
    stor10 = code.data[19503 len 32]
    return code.data[496 len 18751]
}



// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;
uint256 startTime;
uint256 endTime;
uint256 ethMin;
uint256 ethMax;
address multisigWalletAddress;
uint256 sub_643dacde;
uint256 sub_614c4ebe;
uint256 sub_0df446c4;
uint256 sub_871bb7eb;
uint256 sub_d703d804;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8
mapping of uint256 contributions;

function sub_0df446c4(?) {
    return sub_0df446c4
}

function ethMin() {
    return ethMin
}

function endTime() {
    return endTime
}

function contributions(address arg1) {
    return contributions[arg1]
}

function ethMax() {
    return ethMax
}

function tokenContract() {
    return tokenContractAddress
}

function sub_614c4ebe(?) {
    return sub_614c4ebe
}

function sub_643dacde(?) {
    return sub_643dacde
}

function startTime() {
    return startTime
}

function sub_871bb7eb(?) {
    return sub_871bb7eb
}

function isFinalized() {
    return bool(uint8(stor12.field_8))
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function isHalted() {
    return bool(uint8(stor12.field_0))
}

function sub_d703d804(?) {
    return sub_d703d804
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit LogSetOwner(owner, arg1);
    return 1
}

function sub_5af83507(?) {
    require msg.sender == owner
    require uint8(stor12.field_0)
    uint8(stor12.field_0) = 0
    emit 0xd159e0fe 
    return 1
}

function haltCrowdsale() {
    require msg.sender == owner
    require not uint8(stor12.field_0)
    uint8(stor12.field_0) = 1
    emit 0x68b3347d 
    return 1
}

function setMultisigWallet(address arg1) {
    require msg.sender == owner
    require arg1
    multisigWalletAddress = arg1
    emit 0x1af34336: multisigWalletAddress, multisigWalletAddress
    return 1
}

function getState() {
    if uint8(stor12.field_8):
        return 4
    if block.timestamp < startTime:
        return 0
    if block.timestamp > endTime:
        if eth.balance(this.address) >= ethMin:
            return 2
        return 3
    if eth.balance(this.address) >= ethMax:
        return 2
    return 1
}

function sub_331badd9(?) {
    require msg.sender == owner
    require not tokenContractAddress
    create contract with 0 wei
                    code: code.data[9001 len 9707]
    require create.new_address
    tokenContractAddress = address(create.new_address)
    emit 0xaf5abb33: tokenContractAddress
    return 1
}

function sub_9dd05799(?) {
    require msg.sender == owner
    require arg1 > 0
    require not uint8(stor12.field_8)
    if block.timestamp >= startTime:
        if block.timestamp > endTime:
            require eth.balance(this.address) < ethMin
            revert
        else:
            require eth.balance(this.address) < ethMax
            revert
    else:
        sub_d703d804 = arg1
        emit 0xb1d23ee1: sub_d703d804, sub_d703d804
        return 1
}

function sub_e4e2c9f7(?) {
    require not uint8(stor12.field_8)
    require block.timestamp >= startTime
    require block.timestamp > endTime
    require eth.balance(this.address) < ethMin
    require contributions[address(msg.sender)] > 0
    contributions[address(msg.sender)] = 0
    call msg.sender with:
       value contributions[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x7811ed4f: msg.sender, contributions[address(msg.sender)]
    return 1
}

function mintPresaleTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    if block.timestamp >= startTime:
        if block.timestamp > endTime:
            require eth.balance(this.address) >= ethMin
        else:
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x883d6bb7: address(arg1), arg2
    return 1
}

function sub_e9ed4fc2(?) {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    require block.timestamp >= startTime
    if block.timestamp > endTime:
        require eth.balance(this.address) >= ethMin
    else:
    require contributions[address(arg1)] > 0
    contributions[address(arg1)] = 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.unmintTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    call arg1 with:
       value contributions[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    return 1
}

function finalizeCrowdsale() {
    require msg.sender == owner
    require not uint8(stor12.field_8)
    require block.timestamp >= startTime
    if block.timestamp > endTime:
        require eth.balance(this.address) >= ethMin
    else:
        require eth.balance(this.address) >= ethMax
    require multisigWalletAddress
    Mask(248, 0, stor12.field_8) = 1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 2 * ext_call.return_data[0] / ext_call.return_data[0] == 2
    require 2 * ext_call.return_data[0] == (3 * 2 * ext_call.return_data[0] / 3) + (2 * ext_call.return_data[0] % 3)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, 2 * ext_call.return_data[0] / 3
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.setMintMaster(address rg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.setUpgradeMaster(address rg1) with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.setCrowdsaleCompleted() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call multisigWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit 0x87da8395: eth.balance(this.address)
    return 1
}

function _fallback() payable {
    require tokenContractAddress
    require not uint8(stor12.field_8)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require eth.balance(this.address) < ethMax
    require not uint8(stor12.field_0)
    require msg.value >= 10^15
    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
    require contributions[address(msg.sender)] + msg.value >= msg.value
    contributions[address(msg.sender)] += msg.value
    if sub_d703d804:
        require sub_d703d804
        require sub_d703d804 * msg.value / sub_d703d804 == msg.value
    if msg.value < 20 * 10^18:
        if block.timestamp < sub_643dacde:
            if sub_d703d804 * msg.value:
                require sub_d703d804 * msg.value
                require 160 * sub_d703d804 * msg.value / sub_d703d804 * msg.value == 160
            require 160 * sub_d703d804 * msg.value == (100 * 160 * sub_d703d804 * msg.value / 100) + (160 * sub_d703d804 * msg.value % 100)
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 160 * sub_d703d804 * msg.value / 100
            require ext_call.success
            require ext_call.return_data[0]
            require sub_d703d804 * msg.value <= 160 * sub_d703d804 * msg.value / 100
            emit 0xa924299c: address(msg.sender), msg.value, sub_d703d804 * msg.value, (160 * sub_d703d804 * msg.value / 100) - (sub_d703d804 * msg.value)
        else:
            if block.timestamp < sub_614c4ebe:
                if sub_d703d804 * msg.value:
                    require sub_d703d804 * msg.value
                    require 140 * sub_d703d804 * msg.value / sub_d703d804 * msg.value == 140
                require 140 * sub_d703d804 * msg.value == (100 * 140 * sub_d703d804 * msg.value / 100) + (140 * sub_d703d804 * msg.value % 100)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 140 * sub_d703d804 * msg.value / 100
                require ext_call.success
                require ext_call.return_data[0]
                require sub_d703d804 * msg.value <= 140 * sub_d703d804 * msg.value / 100
                emit 0xa924299c: address(msg.sender), msg.value, sub_d703d804 * msg.value, (140 * sub_d703d804 * msg.value / 100) - (sub_d703d804 * msg.value)
            else:
                if block.timestamp < sub_0df446c4:
                    if sub_d703d804 * msg.value:
                        require sub_d703d804 * msg.value
                        require 125 * sub_d703d804 * msg.value / sub_d703d804 * msg.value == 125
                    require 125 * sub_d703d804 * msg.value == (100 * 125 * sub_d703d804 * msg.value / 100) + (125 * sub_d703d804 * msg.value % 100)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 125 * sub_d703d804 * msg.value / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require sub_d703d804 * msg.value <= 125 * sub_d703d804 * msg.value / 100
                    emit 0xa924299c: address(msg.sender), msg.value, sub_d703d804 * msg.value, (125 * sub_d703d804 * msg.value / 100) - (sub_d703d804 * msg.value)
                else:
                    if block.timestamp >= sub_871bb7eb:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, sub_d703d804 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        require sub_d703d804 * msg.value <= sub_d703d804 * msg.value
                        emit 0xa924299c: address(msg.sender), msg.value, sub_d703d804 * msg.value, (sub_d703d804 * msg.value) - (sub_d703d804 * msg.value)
                    else:
                        if sub_d703d804 * msg.value:
                            require sub_d703d804 * msg.value
                            require 110 * sub_d703d804 * msg.value / sub_d703d804 * msg.value == 110
                        require 110 * sub_d703d804 * msg.value == (100 * 110 * sub_d703d804 * msg.value / 100) + (110 * sub_d703d804 * msg.value % 100)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 110 * sub_d703d804 * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require sub_d703d804 * msg.value <= 110 * sub_d703d804 * msg.value / 100
                        emit 0xa924299c: address(msg.sender), msg.value, sub_d703d804 * msg.value, (110 * sub_d703d804 * msg.value / 100) - (sub_d703d804 * msg.value)
    else:
        if sub_d703d804 * msg.value:
            require sub_d703d804 * msg.value
            require 120 * sub_d703d804 * msg.value / sub_d703d804 * msg.value == 120
        require 120 * sub_d703d804 * msg.value == (100 * 120 * sub_d703d804 * msg.value / 100) + (120 * sub_d703d804 * msg.value % 100)
        if block.timestamp < sub_643dacde:
            if 120 * sub_d703d804 * msg.value / 100:
                require 120 * sub_d703d804 * msg.value / 100
                require 160 * 120 * sub_d703d804 * msg.value / 100 / 120 * sub_d703d804 * msg.value / 100 == 160
            require 160 * 120 * sub_d703d804 * msg.value / 100 == (100 * 160 * 120 * sub_d703d804 * msg.value / 100 / 100) + (160 * 120 * sub_d703d804 * msg.value / 100 % 100)
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 160 * 120 * sub_d703d804 * msg.value / 100 / 100
            require ext_call.success
            require ext_call.return_data[0]
            require 120 * sub_d703d804 * msg.value / 100 <= 160 * 120 * sub_d703d804 * msg.value / 100 / 100
            emit 0xa924299c: address(msg.sender), msg.value, 120 * sub_d703d804 * msg.value / 100, (160 * 120 * sub_d703d804 * msg.value / 100 / 100) - (120 * sub_d703d804 * msg.value / 100)
        else:
            if block.timestamp < sub_614c4ebe:
                if 120 * sub_d703d804 * msg.value / 100:
                    require 120 * sub_d703d804 * msg.value / 100
                    require 140 * 120 * sub_d703d804 * msg.value / 100 / 120 * sub_d703d804 * msg.value / 100 == 140
                require 140 * 120 * sub_d703d804 * msg.value / 100 == (100 * 140 * 120 * sub_d703d804 * msg.value / 100 / 100) + (140 * 120 * sub_d703d804 * msg.value / 100 % 100)
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 140 * 120 * sub_d703d804 * msg.value / 100 / 100
                require ext_call.success
                require ext_call.return_data[0]
                require 120 * sub_d703d804 * msg.value / 100 <= 140 * 120 * sub_d703d804 * msg.value / 100 / 100
                emit 0xa924299c: address(msg.sender), msg.value, 120 * sub_d703d804 * msg.value / 100, (140 * 120 * sub_d703d804 * msg.value / 100 / 100) - (120 * sub_d703d804 * msg.value / 100)
            else:
                if block.timestamp < sub_0df446c4:
                    if 120 * sub_d703d804 * msg.value / 100:
                        require 120 * sub_d703d804 * msg.value / 100
                        require 125 * 120 * sub_d703d804 * msg.value / 100 / 120 * sub_d703d804 * msg.value / 100 == 125
                    require 125 * 120 * sub_d703d804 * msg.value / 100 == (100 * 125 * 120 * sub_d703d804 * msg.value / 100 / 100) + (125 * 120 * sub_d703d804 * msg.value / 100 % 100)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 125 * 120 * sub_d703d804 * msg.value / 100 / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    require 120 * sub_d703d804 * msg.value / 100 <= 125 * 120 * sub_d703d804 * msg.value / 100 / 100
                    emit 0xa924299c: address(msg.sender), msg.value, 120 * sub_d703d804 * msg.value / 100, (125 * 120 * sub_d703d804 * msg.value / 100 / 100) - (120 * sub_d703d804 * msg.value / 100)
                else:
                    if block.timestamp >= sub_871bb7eb:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 120 * sub_d703d804 * msg.value / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require 120 * sub_d703d804 * msg.value / 100 <= 120 * sub_d703d804 * msg.value / 100
                        emit 0xa924299c: address(msg.sender), msg.value, 120 * sub_d703d804 * msg.value / 100, 0
                    else:
                        if 120 * sub_d703d804 * msg.value / 100:
                            require 120 * sub_d703d804 * msg.value / 100
                            require 110 * 120 * sub_d703d804 * msg.value / 100 / 120 * sub_d703d804 * msg.value / 100 == 110
                        require 110 * 120 * sub_d703d804 * msg.value / 100 == (100 * 110 * 120 * sub_d703d804 * msg.value / 100 / 100) + (110 * 120 * sub_d703d804 * msg.value / 100 % 100)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 110 * 120 * sub_d703d804 * msg.value / 100 / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        require 120 * sub_d703d804 * msg.value / 100 <= 110 * 120 * sub_d703d804 * msg.value / 100 / 100
                        emit 0xa924299c: address(msg.sender), msg.value, 120 * sub_d703d804 * msg.value / 100, (110 * 120 * sub_d703d804 * msg.value / 100 / 100) - (120 * sub_d703d804 * msg.value / 100)
}

function sub_95fce571(?) {
    if not sub_d703d804:
        if arg1 < 20 * 10^18:
            if block.timestamp < sub_643dacde:
                if not sub_d703d804 * arg1:
                    if 160 * sub_d703d804 * arg1 == (100 * 160 * sub_d703d804 * arg1 / 100) + (160 * sub_d703d804 * arg1 % 100):
                        return sub_d703d804 * arg1, 160 * sub_d703d804 * arg1 / 100
                else:
                    if sub_d703d804 * arg1:
                        if 160 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 160:
                            if 160 * sub_d703d804 * arg1 == (100 * 160 * sub_d703d804 * arg1 / 100) + (160 * sub_d703d804 * arg1 % 100):
                                return sub_d703d804 * arg1, 160 * sub_d703d804 * arg1 / 100
            else:
                if block.timestamp < sub_614c4ebe:
                    if not sub_d703d804 * arg1:
                        if 140 * sub_d703d804 * arg1 == (100 * 140 * sub_d703d804 * arg1 / 100) + (140 * sub_d703d804 * arg1 % 100):
                            return sub_d703d804 * arg1, 140 * sub_d703d804 * arg1 / 100
                    else:
                        if sub_d703d804 * arg1:
                            if 140 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 140:
                                if 140 * sub_d703d804 * arg1 == (100 * 140 * sub_d703d804 * arg1 / 100) + (140 * sub_d703d804 * arg1 % 100):
                                    return sub_d703d804 * arg1, 140 * sub_d703d804 * arg1 / 100
                else:
                    if block.timestamp < sub_0df446c4:
                        if not sub_d703d804 * arg1:
                            if 125 * sub_d703d804 * arg1 == (100 * 125 * sub_d703d804 * arg1 / 100) + (125 * sub_d703d804 * arg1 % 100):
                                return sub_d703d804 * arg1, 125 * sub_d703d804 * arg1 / 100
                        else:
                            if sub_d703d804 * arg1:
                                if 125 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 125:
                                    if 125 * sub_d703d804 * arg1 == (100 * 125 * sub_d703d804 * arg1 / 100) + (125 * sub_d703d804 * arg1 % 100):
                                        return sub_d703d804 * arg1, 125 * sub_d703d804 * arg1 / 100
                    else:
                        if block.timestamp >= sub_871bb7eb:
                            return sub_d703d804 * arg1, sub_d703d804 * arg1
                        if not sub_d703d804 * arg1:
                            if 110 * sub_d703d804 * arg1 == (100 * 110 * sub_d703d804 * arg1 / 100) + (110 * sub_d703d804 * arg1 % 100):
                                return sub_d703d804 * arg1, 110 * sub_d703d804 * arg1 / 100
                        else:
                            if sub_d703d804 * arg1:
                                if 110 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 110:
                                    if 110 * sub_d703d804 * arg1 == (100 * 110 * sub_d703d804 * arg1 / 100) + (110 * sub_d703d804 * arg1 % 100):
                                        return sub_d703d804 * arg1, 110 * sub_d703d804 * arg1 / 100
        else:
            if not sub_d703d804 * arg1:
                if 120 * sub_d703d804 * arg1 == (100 * 120 * sub_d703d804 * arg1 / 100) + (120 * sub_d703d804 * arg1 % 100):
                    if block.timestamp < sub_643dacde:
                        if not 120 * sub_d703d804 * arg1 / 100:
                            if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                        else:
                            if 120 * sub_d703d804 * arg1 / 100:
                                if 160 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 160:
                                    if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                        return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                    else:
                        if block.timestamp < sub_614c4ebe:
                            if not 120 * sub_d703d804 * arg1 / 100:
                                if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                    return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                            else:
                                if 120 * sub_d703d804 * arg1 / 100:
                                    if 140 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 140:
                                        if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                            return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                        else:
                            if block.timestamp < sub_0df446c4:
                                if not 120 * sub_d703d804 * arg1 / 100:
                                    if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                        return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if 120 * sub_d703d804 * arg1 / 100:
                                        if 125 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 125:
                                            if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                            else:
                                if block.timestamp >= sub_871bb7eb:
                                    return 120 * sub_d703d804 * arg1 / 100, 120 * sub_d703d804 * arg1 / 100
                                if not 120 * sub_d703d804 * arg1 / 100:
                                    if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                        return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if 120 * sub_d703d804 * arg1 / 100:
                                        if 110 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 110:
                                            if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
            else:
                if sub_d703d804 * arg1:
                    if 120 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 120:
                        if 120 * sub_d703d804 * arg1 == (100 * 120 * sub_d703d804 * arg1 / 100) + (120 * sub_d703d804 * arg1 % 100):
                            if block.timestamp < sub_643dacde:
                                if not 120 * sub_d703d804 * arg1 / 100:
                                    if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                        return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if 120 * sub_d703d804 * arg1 / 100:
                                        if 160 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 160:
                                            if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                            else:
                                if block.timestamp < sub_614c4ebe:
                                    if not 120 * sub_d703d804 * arg1 / 100:
                                        if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                            return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                    else:
                                        if 120 * sub_d703d804 * arg1 / 100:
                                            if 140 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 140:
                                                if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                    return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if block.timestamp < sub_0df446c4:
                                        if not 120 * sub_d703d804 * arg1 / 100:
                                            if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if 120 * sub_d703d804 * arg1 / 100:
                                                if 125 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 125:
                                                    if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                    else:
                                        if block.timestamp >= sub_871bb7eb:
                                            return 120 * sub_d703d804 * arg1 / 100, 120 * sub_d703d804 * arg1 / 100
                                        if not 120 * sub_d703d804 * arg1 / 100:
                                            if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if 120 * sub_d703d804 * arg1 / 100:
                                                if 110 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 110:
                                                    if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
    else:
        if sub_d703d804:
            if sub_d703d804 * arg1 / sub_d703d804 == arg1:
                if arg1 < 20 * 10^18:
                    if block.timestamp < sub_643dacde:
                        if not sub_d703d804 * arg1:
                            if 160 * sub_d703d804 * arg1 == (100 * 160 * sub_d703d804 * arg1 / 100) + (160 * sub_d703d804 * arg1 % 100):
                                return sub_d703d804 * arg1, 160 * sub_d703d804 * arg1 / 100
                        else:
                            if sub_d703d804 * arg1:
                                if 160 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 160:
                                    if 160 * sub_d703d804 * arg1 == (100 * 160 * sub_d703d804 * arg1 / 100) + (160 * sub_d703d804 * arg1 % 100):
                                        return sub_d703d804 * arg1, 160 * sub_d703d804 * arg1 / 100
                    else:
                        if block.timestamp < sub_614c4ebe:
                            if not sub_d703d804 * arg1:
                                if 140 * sub_d703d804 * arg1 == (100 * 140 * sub_d703d804 * arg1 / 100) + (140 * sub_d703d804 * arg1 % 100):
                                    return sub_d703d804 * arg1, 140 * sub_d703d804 * arg1 / 100
                            else:
                                if sub_d703d804 * arg1:
                                    if 140 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 140:
                                        if 140 * sub_d703d804 * arg1 == (100 * 140 * sub_d703d804 * arg1 / 100) + (140 * sub_d703d804 * arg1 % 100):
                                            return sub_d703d804 * arg1, 140 * sub_d703d804 * arg1 / 100
                        else:
                            if block.timestamp < sub_0df446c4:
                                if not sub_d703d804 * arg1:
                                    if 125 * sub_d703d804 * arg1 == (100 * 125 * sub_d703d804 * arg1 / 100) + (125 * sub_d703d804 * arg1 % 100):
                                        return sub_d703d804 * arg1, 125 * sub_d703d804 * arg1 / 100
                                else:
                                    if sub_d703d804 * arg1:
                                        if 125 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 125:
                                            if 125 * sub_d703d804 * arg1 == (100 * 125 * sub_d703d804 * arg1 / 100) + (125 * sub_d703d804 * arg1 % 100):
                                                return sub_d703d804 * arg1, 125 * sub_d703d804 * arg1 / 100
                            else:
                                if block.timestamp >= sub_871bb7eb:
                                    return sub_d703d804 * arg1, sub_d703d804 * arg1
                                if not sub_d703d804 * arg1:
                                    if 110 * sub_d703d804 * arg1 == (100 * 110 * sub_d703d804 * arg1 / 100) + (110 * sub_d703d804 * arg1 % 100):
                                        return sub_d703d804 * arg1, 110 * sub_d703d804 * arg1 / 100
                                else:
                                    if sub_d703d804 * arg1:
                                        if 110 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 110:
                                            if 110 * sub_d703d804 * arg1 == (100 * 110 * sub_d703d804 * arg1 / 100) + (110 * sub_d703d804 * arg1 % 100):
                                                return sub_d703d804 * arg1, 110 * sub_d703d804 * arg1 / 100
                else:
                    if not sub_d703d804 * arg1:
                        if 120 * sub_d703d804 * arg1 == (100 * 120 * sub_d703d804 * arg1 / 100) + (120 * sub_d703d804 * arg1 % 100):
                            if block.timestamp < sub_643dacde:
                                if not 120 * sub_d703d804 * arg1 / 100:
                                    if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                        return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if 120 * sub_d703d804 * arg1 / 100:
                                        if 160 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 160:
                                            if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                            else:
                                if block.timestamp < sub_614c4ebe:
                                    if not 120 * sub_d703d804 * arg1 / 100:
                                        if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                            return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                    else:
                                        if 120 * sub_d703d804 * arg1 / 100:
                                            if 140 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 140:
                                                if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                    return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                else:
                                    if block.timestamp < sub_0df446c4:
                                        if not 120 * sub_d703d804 * arg1 / 100:
                                            if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if 120 * sub_d703d804 * arg1 / 100:
                                                if 125 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 125:
                                                    if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                    else:
                                        if block.timestamp >= sub_871bb7eb:
                                            return 120 * sub_d703d804 * arg1 / 100, 120 * sub_d703d804 * arg1 / 100
                                        if not 120 * sub_d703d804 * arg1 / 100:
                                            if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if 120 * sub_d703d804 * arg1 / 100:
                                                if 110 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 110:
                                                    if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
                    else:
                        if sub_d703d804 * arg1:
                            if 120 * sub_d703d804 * arg1 / sub_d703d804 * arg1 == 120:
                                if 120 * sub_d703d804 * arg1 == (100 * 120 * sub_d703d804 * arg1 / 100) + (120 * sub_d703d804 * arg1 % 100):
                                    if block.timestamp < sub_643dacde:
                                        if not 120 * sub_d703d804 * arg1 / 100:
                                            if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if 120 * sub_d703d804 * arg1 / 100:
                                                if 160 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 160:
                                                    if 160 * 120 * sub_d703d804 * arg1 / 100 == (100 * 160 * 120 * sub_d703d804 * arg1 / 100 / 100) + (160 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 160 * 120 * sub_d703d804 * arg1 / 100 / 100
                                    else:
                                        if block.timestamp < sub_614c4ebe:
                                            if not 120 * sub_d703d804 * arg1 / 100:
                                                if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                    return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                            else:
                                                if 120 * sub_d703d804 * arg1 / 100:
                                                    if 140 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 140:
                                                        if 140 * 120 * sub_d703d804 * arg1 / 100 == (100 * 140 * 120 * sub_d703d804 * arg1 / 100 / 100) + (140 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                            return 120 * sub_d703d804 * arg1 / 100, 140 * 120 * sub_d703d804 * arg1 / 100 / 100
                                        else:
                                            if block.timestamp < sub_0df446c4:
                                                if not 120 * sub_d703d804 * arg1 / 100:
                                                    if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                                else:
                                                    if 120 * sub_d703d804 * arg1 / 100:
                                                        if 125 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 125:
                                                            if 125 * 120 * sub_d703d804 * arg1 / 100 == (100 * 125 * 120 * sub_d703d804 * arg1 / 100 / 100) + (125 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                                return 120 * sub_d703d804 * arg1 / 100, 125 * 120 * sub_d703d804 * arg1 / 100 / 100
                                            else:
                                                if block.timestamp >= sub_871bb7eb:
                                                    return 120 * sub_d703d804 * arg1 / 100, 120 * sub_d703d804 * arg1 / 100
                                                if not 120 * sub_d703d804 * arg1 / 100:
                                                    if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                        return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
                                                else:
                                                    if 120 * sub_d703d804 * arg1 / 100:
                                                        if 110 * 120 * sub_d703d804 * arg1 / 100 / 120 * sub_d703d804 * arg1 / 100 == 110:
                                                            if 110 * 120 * sub_d703d804 * arg1 / 100 == (100 * 110 * 120 * sub_d703d804 * arg1 / 100 / 100) + (110 * 120 * sub_d703d804 * arg1 / 100 % 100):
                                                                return 120 * sub_d703d804 * arg1 / 100, 110 * 120 * sub_d703d804 * arg1 / 100 / 100
    revert
}



}
