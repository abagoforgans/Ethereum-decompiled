contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor2 = 0xfe2b768a23948eddd7d7caea55baa31e39045382
    require not msg.value
    stor0 = msg.sender
    require address(code.data[7561 len 32])
    stor8 = 0
    stor3 = address(code.data[7561 len 32])
    stor4 = code.data[7593 len 32]
    stor5 = code.data[7593 len 32] + (120 * 24 * 3600)
    stor7 = 0
    mem[3432 len 0] = None
    mem[3688 len 0] = None
    create contract with 0 wei
                    code: code.data[4961 len 2600], 64, 320, 7, mem[3432 len 224], 7, mem[3688 len 224]
    require create.new_address
    stor6 = address(create.new_address)
    return code.data[1209 len 3752]
}



// =====================  Runtime code  =====================


const sub_0eb68a4c(?) = 250 * 10^18

const sub_2d86a8fd(?) = (5 * 10^17 * 3600)

const sub_3af07400(?) = 100 * 10^18

const sub_3e4fd1a6(?) = 550 * 10^18

const sub_6e315ad9(?) = 0xa9a418da22532bd1189ff8be5cdaf3570bf9da43

const sub_7cb86fe2(?) = 0xc10261166b4699d3c1535aa30ac29446c755f065

const sub_8811ec86(?) = 1000 * 10^18

const sub_b4931a89(?) = 0xe480219e1904de4500cd8459c74d388457a3f3ec

const DEV_TEAM_HOLDER = 0xed7211f84b37b0f62d345462ffeb56b57b787539

const FOUNDATION_HOLDER = 0x127e631e39eaeb0a214dfc5806bbdf26ba5ee214

const MAX_OPEN_SOLD = 250 * 10^18

const PRE_ICO_TOKENS = 500 * 10^18

const BONUS_TOKENS = 5000 * 10^18

const ICO_DURATION = (120 * 24 * 3600)

const FOUNDATION_TOKENS = (25 * 10^16 * 3600)


address owner;
address newOwner;
address sub_c775997dAddress;
address walletAddress;
uint256 startTime;
uint256 endTime;
address sub_efdf70b2Address;
uint256 openSoldTokens;
uint8 stor8;

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function openSoldTokens() {
    return openSoldTokens
}

function halted() {
    return bool(stor8)
}

function sub_c775997d(?) {
    return sub_c775997dAddress
}

function newOwner() {
    return newOwner
}

function sub_efdf70b2(?) {
    return sub_efdf70b2Address
}

function halt() {
    require walletAddress == msg.sender
    stor8 = 1
}

function unHalt() {
    require walletAddress == msg.sender
    stor8 = 0
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function finishICO() {
    require walletAddress == msg.sender
    require block.timestamp > endTime
    if openSoldTokens < 250 * 10^18:
        require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
        delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args 250 * 10^18, openSoldTokens
        require delegate.return_code
        require ext_code.size(sub_efdf70b2Address)
        call sub_efdf70b2Address.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args walletAddress, delegate.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        openSoldTokens = 250 * 10^18
    return 1
}

function _fallback() payable {
    require not stor8
    require openSoldTokens < 250 * 10^18
    require not stor8
    require walletAddress
    require openSoldTokens < 250 * 10^18
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.value >= 10^17
    require msg.value <= 20 * 10^18
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
    delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args 250 * 10^18, openSoldTokens
    require delegate.return_code
    require delegate.return_data[0]
    if delegate.return_data[0] < 250 * msg.value:
        require msg.value >= delegate.return_data[0] / 250
        if delegate.return_data[0] / 250 > 0:
            call walletAddress with:
               value delegate.return_data[0] / 250 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_efdf70b2Address)
            call sub_efdf70b2Address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, delegate.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args openSoldTokens, delegate.return_data[0]
            require delegate.return_code
            openSoldTokens = delegate.return_data[0]
            emit NewSale(delegate.return_data[0] / 250, delegate.return_data[0], msg.sender);
        require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
        delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args msg.value, delegate.return_data[0] / 250
    else:
        require msg.value >= msg.value
        if msg.value > 0:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_efdf70b2Address)
            call sub_efdf70b2Address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 250 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args openSoldTokens, 250 * msg.value
            require delegate.return_code
            openSoldTokens = delegate.return_data[0]
            emit NewSale(msg.value, 250 * msg.value, msg.sender);
        require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
        delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args msg.value, msg.value
    require delegate.return_code
    if delegate.return_data[0] > 0:
        call msg.sender with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_688011d6(?) payable {
    require not stor8
    require walletAddress
    require openSoldTokens < 250 * 10^18
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.value >= 10^17
    require msg.value <= 20 * 10^18
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
    delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args 250 * 10^18, openSoldTokens
    require delegate.return_code
    require delegate.return_data[0]
    if arg1:
        if delegate.return_data[0] < 250 * msg.value:
            require msg.value >= delegate.return_data[0] / 250
            if delegate.return_data[0] / 250 > 0:
                call walletAddress with:
                   value delegate.return_data[0] / 250 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_efdf70b2Address)
                call sub_efdf70b2Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), delegate.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
                delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args openSoldTokens, delegate.return_data[0]
                require delegate.return_code
                openSoldTokens = delegate.return_data[0]
                emit NewSale(delegate.return_data[0] / 250, delegate.return_data[0], arg1);
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
                 gas gas_remaining - 710 wei
                args msg.value, delegate.return_data[0] / 250
        else:
            require msg.value >= msg.value
            if msg.value > 0:
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_efdf70b2Address)
                call sub_efdf70b2Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 250 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
                delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args openSoldTokens, 250 * msg.value
                require delegate.return_code
                openSoldTokens = delegate.return_data[0]
                emit NewSale(msg.value, 250 * msg.value, arg1);
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
                 gas gas_remaining - 710 wei
                args msg.value, msg.value
    else:
        if delegate.return_data[0] < 250 * msg.value:
            require msg.value >= delegate.return_data[0] / 250
            if delegate.return_data[0] / 250 > 0:
                call walletAddress with:
                   value delegate.return_data[0] / 250 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_efdf70b2Address)
                call sub_efdf70b2Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, delegate.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
                delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args openSoldTokens, delegate.return_data[0]
                require delegate.return_code
                openSoldTokens = delegate.return_data[0]
                emit NewSale(delegate.return_data[0] / 250, delegate.return_data[0], msg.sender);
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
                 gas gas_remaining - 710 wei
                args msg.value, delegate.return_data[0] / 250
        else:
            require msg.value >= msg.value
            if msg.value > 0:
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_efdf70b2Address)
                call sub_efdf70b2Address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 250 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
                delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args openSoldTokens, 250 * msg.value
                require delegate.return_code
                openSoldTokens = delegate.return_data[0]
                emit NewSale(msg.value, 250 * msg.value, msg.sender);
            require ext_code.size(0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f)
            delegate 0x16ea1e7a334dff8c80f95baa23c6f01a3900fb8f.0xb67d77c5 with:
                 gas gas_remaining - 710 wei
                args msg.value, msg.value
    require delegate.return_code
    if delegate.return_data[0] > 0:
        call msg.sender with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return 1
}



}
