contract main {




// =====================  Runtime code  =====================


const balanceInWei = eth.balance(this.address)


uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address owner;
mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor7;
uint256 coinPriceInWei;
mapping of struct transferPlanList;
mapping of struct ethPlanList;
uint256 blockTime;
uint8 stor12;
array of struct stor13;
bool stor14; offset 8
uint8 stor14;
uint32 stor14; offset 9
uint32 adminUsrCount; offset 8
mapping of struct transferEthAgreementList;
mapping of struct needToAddAdminInfoList;
mapping of struct needDelFromAdminInfoList;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function coinPriceInWei() {
    return coinPriceInWei
}

function decimals() {
    return decimals
}

function blockTime() {
    return blockTime
}

function isAdminOwnersValid() {
    return bool(uint8(stor14.field_0))
}

function needToAddAdminInfoList(address arg1) {
    return needToAddAdminInfoList[arg1].field_0, needToAddAdminInfoList[arg1].field_512
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function needDelFromAdminInfoList(address arg1) {
    return needDelFromAdminInfoList[arg1].field_0, needDelFromAdminInfoList[arg1].field_512
}

function canRecvEthDirect() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function ethPlanList(address arg1) {
    return ethPlanList[arg1].field_0, ethPlanList[arg1].field_256, bool(ethPlanList[arg1].field_512)
}

function isTransPaused() {
    return bool(stor12)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferEthAgreementList(uint256 arg1) {
    return transferEthAgreementList[arg1].field_256, 
           transferEthAgreementList[arg1].field_512,
           transferEthAgreementList[arg1].field_768,
           transferEthAgreementList[arg1].field_1024,
           transferEthAgreementList[arg1].field_1184,
           bool(transferEthAgreementList[arg1].field_1216)
}

function transferPlanList(address arg1) {
    return transferPlanList[arg1].field_0, bool(transferPlanList[arg1].field_256)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function adminUsrCount() {
    return adminUsrCount
}

function changeRecvEthStatus(bool arg1) {
    require msg.sender == owner
    stor7 = uint8(arg1)
}

function setCoinPrice(uint256 arg1) {
    require msg.sender == owner
    coinPriceInWei = arg1
    return coinPriceInWei
}

function setPauseStatus(bool arg1) {
    if owner != msg.sender:
        require stor13[msg.sender].field_0
    stor12 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require arg2 > 0
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeContractName(string arg1, string arg2) {
    if owner != msg.sender:
        require stor13[msg.sender].field_0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1 != msg.sender
    balances[arg1] = balances[stor4]
    balances[stor4] = 0
    owner = arg1
    emit OwnerChang(balances[arg1], msg.sender, arg1);
}

function setTransferPlan(address arg1, uint256 arg2, bool arg3) {
    if owner != msg.sender:
        require stor13[msg.sender].field_0
    transferPlanList[address(arg1)].field_256 = uint8(arg3)
    if uint8(arg3):
        transferPlanList[address(arg1)].field_0 = arg2
}

function disableTransferAgreement(uint256 arg1) {
    require msg.sender == transferEthAgreementList[arg1].field_1024
    require 123456789 == transferEthAgreementList[arg1].field_1184
    transferEthAgreementList[arg1].field_1184 = 987654321
    transferEthAgreementList[arg1].field_1216 = 0
}

function TransferEthToAddr(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require not uint8(stor14.field_0)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setEthPlan(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require msg.sender == owner
    require arg2 >= 0
    require arg3 >= 0
    require arg2 + arg3 > 0
    require arg3 <= balances[stor4]
    ethPlanList[address(arg1)].field_512 = uint8(arg4)
    if uint8(arg4):
        ethPlanList[address(arg1)].field_0 = arg2
        ethPlanList[address(arg1)].field_256 = arg3
}

function transfer(address arg1, uint256 arg2) {
    if stor12:
        emit Transfer(0, msg.sender, arg1);
        revert
    if this.address == arg1:
        emit Transfer(0, msg.sender, arg1);
        revert
    if arg2 > balances[msg.sender]:
        emit Transfer(0, msg.sender, arg1);
        revert
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        emit Transfer(0, msg.sender, arg1);
        revert
    if transferPlanList[msg.sender].field_256:
        if arg2 > transferPlanList[msg.sender].field_0:
            emit Transfer(0, msg.sender, arg1);
            revert
    balances[msg.sender] -= arg2
    balances[arg1] += arg2
    if transferPlanList[msg.sender].field_256:
        transferPlanList[msg.sender].field_0 -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor12:
        emit Transfer(0, arg1, arg2);
        revert
    if this.address == arg2:
        emit Transfer(0, arg1, arg2);
        revert
    if arg3 > balances[address(arg1)]:
        emit Transfer(0, arg1, arg2);
        revert
    if arg3 > allowed[address(arg1)][msg.sender]:
        emit Transfer(0, arg1, arg2);
        revert
    if transferPlanList[address(arg1)].field_256:
        if arg3 > transferPlanList[address(arg1)].field_0:
            emit Transfer(0, arg1, arg2);
            revert
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowed[address(arg1)][msg.sender] -= arg3
    if transferPlanList[address(arg1)].field_256:
        transferPlanList[address(arg1)].field_0 -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTransferAgreement(uint256 arg1, uint256 arg2, address arg3) {
    require stor13[msg.sender].field_0
    require transferEthAgreementList[arg1].field_1184 != 123456789
    require transferEthAgreementList[arg1].field_1184 != 987654321
    transferEthAgreementList[arg1].field_512 = arg2
    transferEthAgreementList[arg1].field_768 = arg3
    transferEthAgreementList[arg1].field_1024 = Mask(192, 0, msg.sender)
    transferEthAgreementList[arg1].field_1184 = 123456789
    transferEthAgreementList[arg1].field_1184 = 0
    transferEthAgreementList[arg1].field_1216 = 1
    transferEthAgreementList[arg1].field_1224 = Mask(56, 200, msg.sender) >> 200
    transferEthAgreementList[arg1].field_1224 = 0
    transferEthAgreementList[arg1].field_1280 = 0
    transferEthAgreementList[arg1][msg.sender].field_0 = 1
    transferEthAgreementList[arg1].field_256 = 1
    transferEthAgreementList[arg1].field_264 = 0
}

function sign(uint256 arg1, address arg2, uint256 arg3) payable {
    require 123456789 == transferEthAgreementList[arg1].field_1184
    require transferEthAgreementList[arg1].field_1216
    require arg3 == transferEthAgreementList[arg1].field_512
    require transferEthAgreementList[arg1].field_768 == arg2
    require stor13[msg.sender].field_0
    require not transferEthAgreementList[arg1][msg.sender].field_0
    require adminUsrCount >= 2
    transferEthAgreementList[arg1][msg.sender].field_0 = 1
    transferEthAgreementList[arg1].field_256 = uint32(transferEthAgreementList[arg1].field_256 + 1)
    if uint32(transferEthAgreementList[arg1].field_256 + 1) > stor14.field_9 % 2147483648:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        transferEthAgreementList[arg1].field_1184 = 987654321
        transferEthAgreementList[arg1].field_1216 = 0
        emit onAdminTransfer(address(arg2), arg3);
}

function delAdminUsrs(address arg1) {
    require stor13[address(arg1)].field_0
    require adminUsrCount >= 4
    require not bool(stor14.field_8)
    require arg1 != msg.sender
    if msg.sender == owner:
        require needDelFromAdminInfoList[address(arg1)].field_0 != 123456789
        needDelFromAdminInfoList[address(arg1)].field_0 = 123456789
        needDelFromAdminInfoList[address(arg1)].field_512 = 0
        needDelFromAdminInfoList[address(arg1)].field_768 = 0
    else:
        require 123456789 == needDelFromAdminInfoList[address(arg1)].field_0
        require needDelFromAdminInfoList[address(arg1)][1][msg.sender].field_0 != 123456789
        needDelFromAdminInfoList[address(arg1)].field_512 = uint32(needDelFromAdminInfoList[address(arg1)].field_512 + 1)
        needDelFromAdminInfoList[address(arg1)][1][msg.sender].field_0 = 123456789
        if needDelFromAdminInfoList[address(arg1)].field_512 > stor14.field_9 % 2147483648:
            stor13[address(arg1)].field_0 = 0
            if adminUsrCount >= 1:
                adminUsrCount = uint32(adminUsrCount - 1)
            if adminUsrCount <= 1:
                uint8(stor14.field_0) = 0
            needDelFromAdminInfoList[address(arg1)].field_0 = 0
            needDelFromAdminInfoList[address(arg1)].field_512 = 0
            needDelFromAdminInfoList[address(arg1)].field_768 = 0
            emit adminUsrChange(address(arg1), msg.sender, 0);
}

function addAdminOwners(address arg1, string arg2, string arg3) {
    if not stor13[msg.sender].field_0:
        require msg.sender == owner
    require owner != arg1
    require not stor13[address(arg1)].field_0
    require arg1 != msg.sender
    if adminUsrCount < 2:
        require msg.sender == owner
        stor13[address(arg1)].field_0 = 1
        stor13[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor13[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        adminUsrCount = uint32(adminUsrCount + 1)
        if 0 or uint32(adminUsrCount + 1) >= 2:
            uint8(stor14.field_0) = 1
        emit adminUsrChange(address(arg1), msg.sender, 1);
    else:
        if msg.sender == owner:
            require needToAddAdminInfoList[address(arg1)].field_0 != 123456789
            needToAddAdminInfoList[address(arg1)].field_0 = 123456789
            needToAddAdminInfoList[address(arg1)].field_512 = 0
            needToAddAdminInfoList[address(arg1)].field_768 = 0
        else:
            require stor13[msg.sender].field_0
            require 123456789 == needToAddAdminInfoList[address(arg1)].field_0
            require needToAddAdminInfoList[address(arg1)][1][msg.sender].field_0 != 123456789
            needToAddAdminInfoList[address(arg1)].field_512 = uint32(needToAddAdminInfoList[address(arg1)].field_512 + 1)
            needToAddAdminInfoList[address(arg1)][1][msg.sender].field_0 = 123456789
            if adminUsrCount >= 2:
                if needToAddAdminInfoList[address(arg1)].field_512 > stor14.field_9 % 2147483648:
                    stor13[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    stor13[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
                    stor13[address(arg1)].field_0 = 1
                    needToAddAdminInfoList[address(arg1)].field_0 = 0
                    needToAddAdminInfoList[address(arg1)].field_512 = 0
                    needToAddAdminInfoList[address(arg1)].field_768 = 0
                    adminUsrCount = uint32(adminUsrCount + 1)
                    emit adminUsrChange(address(arg1), msg.sender, 1);
}

function adminOwners(address arg1) {
    mem[32] = 13
    mem[96] = stor13[arg1][1].length
    mem[128] = stor13[arg1][1].field_0
    idx = 128
    s = 0
    while stor13[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor13[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 160
    mem[ceil32(stor13[arg1][1].length) + 128] = stor13[arg1][2].length
    mem[0] = sha3(arg1, 13) + 2
    mem[ceil32(stor13[arg1][1].length) + 160] = stor13[arg1][2].field_0
    idx = ceil32(stor13[arg1][1].length) + 160
    s = 0
    while ceil32(stor13[arg1][1].length) + stor13[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor13[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 160] = bool(stor13[arg1].field_0)
    mem[ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 192] = 96
    mem[ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 256] = stor13[arg1][1].length
    mem[ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 288 len ceil32(stor13[arg1][1].length)] = mem[128 len ceil32(stor13[arg1][1].length)]
    mem[ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 224] = stor13[arg1][1].length + 128
    mem[stor13[arg1][1].length + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 288] = stor13[arg1][2].length
    mem[stor13[arg1][1].length + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320 len ceil32(stor13[arg1][2].length)] = mem[ceil32(stor13[arg1][1].length) + 160 len ceil32(stor13[arg1][2].length)]
    if not stor13[arg1][2].length % 32:
        return bool(stor13[arg1].field_0), 
               Array(len=stor13[arg1][1].length, data=mem[128 len ceil32(stor13[arg1][1].length)], mem[(2 * ceil32(stor13[arg1][1].length)) + ceil32(stor13[arg1][2].length) + 288 len stor13[arg1][2].length + stor13[arg1][1].length + -ceil32(stor13[arg1][1].length) + 32]),
               stor13[arg1][1].length + 128
    mem[floor32(stor13[arg1][2].length) + stor13[arg1][1].length + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + 320] = mem[floor32(stor13[arg1][2].length) + stor13[arg1][1].length + ceil32(stor13[arg1][1].length) + ceil32(stor13[arg1][2].length) + -stor13[arg1][2].length % 32 + 352 len stor13[arg1][2].length % 32]
    return bool(stor13[arg1].field_0), 
           Array(len=stor13[arg1][1].length, data=mem[128 len ceil32(stor13[arg1][1].length)], mem[(2 * ceil32(stor13[arg1][1].length)) + ceil32(stor13[arg1][2].length) + 288 len floor32(stor13[arg1][2].length) + stor13[arg1][1].length + -ceil32(stor13[arg1][1].length) + 64]),
           stor13[arg1][1].length + 128
}

function _fallback() payable {
    if not stor7:
        if bool(ethPlanList[msg.sender].field_512) != 1:
            require not ethPlanList[msg.sender].field_512
            require coinPriceInWei > 0
            require coinPriceInWei
            require msg.value / coinPriceInWei <= balances[stor4]
            require coinPriceInWei
            require (msg.value / coinPriceInWei) + balances[msg.sender] > balances[msg.sender]
            require coinPriceInWei
            balances[stor4] -= msg.value / coinPriceInWei
            balances[msg.sender] += msg.value / coinPriceInWei
            emit Transfer((msg.value / coinPriceInWei), this.address, msg.sender);
        else:
            if msg.value < ethPlanList[msg.sender].field_0:
                require not ethPlanList[msg.sender].field_512
                require coinPriceInWei > 0
                require coinPriceInWei
                require msg.value / coinPriceInWei <= balances[stor4]
                require coinPriceInWei
                require (msg.value / coinPriceInWei) + balances[msg.sender] > balances[msg.sender]
                require coinPriceInWei
                balances[stor4] -= msg.value / coinPriceInWei
                balances[msg.sender] += msg.value / coinPriceInWei
                emit Transfer((msg.value / coinPriceInWei), this.address, msg.sender);
            else:
                if ethPlanList[msg.sender].field_256 < 0:
                    require not ethPlanList[msg.sender].field_512
                    require coinPriceInWei > 0
                    require coinPriceInWei
                    require msg.value / coinPriceInWei <= balances[stor4]
                    require coinPriceInWei
                    require (msg.value / coinPriceInWei) + balances[msg.sender] > balances[msg.sender]
                    require coinPriceInWei
                    balances[stor4] -= msg.value / coinPriceInWei
                    balances[msg.sender] += msg.value / coinPriceInWei
                    emit Transfer((msg.value / coinPriceInWei), this.address, msg.sender);
                else:
                    if ethPlanList[msg.sender].field_256 <= balances[stor4]:
                        ethPlanList[msg.sender].field_512 = 0
                        balances[stor4] -= ethPlanList[msg.sender].field_256
                        balances[msg.sender] += ethPlanList[msg.sender].field_256
                        emit Transfer(ethPlanList[msg.sender].field_256, this.address, msg.sender);
                    else:
                        require not ethPlanList[msg.sender].field_512
                        require coinPriceInWei > 0
                        require coinPriceInWei
                        require msg.value / coinPriceInWei <= balances[stor4]
                        require coinPriceInWei
                        require (msg.value / coinPriceInWei) + balances[msg.sender] > balances[msg.sender]
                        require coinPriceInWei
                        balances[stor4] -= msg.value / coinPriceInWei
                        balances[msg.sender] += msg.value / coinPriceInWei
                        emit Transfer((msg.value / coinPriceInWei), this.address, msg.sender);
}



}
