contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor8;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor28;
uint256 stor29;
uint256 stor36;
uint256 stor37;
uint8 stor48;
uint256 stor51;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint256 stor55;
uint256 stor56;
uint256 stor57;

function _fallback() payable {
    stor1 = 100
    stor2 = 50
    stor3 = 20
    stor13 = 100000
    stor14 = 100001
    stor15 = 100002
    stor16 = 100003
    stor28 = 5
    stor29 = 180
    stor36 = 5
    stor37 = 180
    stor51 = 0
    stor52 = 1
    stor53 = 2
    stor54 = 3
    stor55 = 4
    stor56 = 5
    stor57 = 10^6
    require not msg.value
    stor18 = 1
    stor19 = 1
    stor17[code.data[15048 len 20]] = stor1
    stor48 = uint8(bool(code.data[15100 len 32]))
    stor8 = uint8(bool(code.data[15132 len 32]))
    emit 0xf17057c0: stor1, code.data[15048 len 20]
    emit Deployed(code.data[15048 len 20], code.data[15068 len 32]);
    return code.data[358 len 14678]
}



// =====================  Runtime code  =====================


#
#  - sub_5a063244(?)
#
const name = 'Banyan Infrastructure Asset'

const getBalance = eth.balance(this.address)

const decimals = 18

const symbol = 'BNA'


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 sub_31e171d9;
uint256 interestRate;
uint256 stor6;
uint256 sub_ff5c086b;
uint8 stor8;
address stor8; offset 8
mapping of address stor9;
mapping of address stor10;
uint256 sub_110e44c3;
mapping of address document;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
mapping of uint256 sub_a2faaceb;
uint256 sub_a10ae9cf;
uint256 sub_b7af57c9;
mapping of struct stor20;
mapping of struct stor21;
uint256 sub_45b77737;
uint256 sub_49fe38ba;
uint256 stor24;
uint256 stor25;
mapping of struct funderBalance;
uint256 stor27; offset 1
uint256 sub_bc9b1090;
uint256 stor28;
uint256 stor29;
mapping of struct stor30;
uint256 sub_3ba9dfd8;
mapping of uint256 stor32;
address sub_502f49c2Address;
uint256 stor34;
mapping of address stor35;
uint256 stor36;
uint256 stor37;
mapping of struct sub_a9c2609b;
uint256 sub_47a5b7e7;
uint256 sub_3b79474c;
uint256 sub_cdac5b0b;
mapping of uint256 stor42;
uint256 sub_a50ea0de;
uint256 sub_7acd7f48;
uint256 sub_26e18bfb;
uint256 sub_86c7391c;
uint8 sub_0c8d3b25;
uint256 stor49;
mapping of uint256 stor50;
uint256 stor51;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint256 stor57;
uint256 contractState;
uint256 sub_76271d8b;
uint256 totalSupply;
mapping of uint256 allowance;

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_0c8d3b25(?) {
    return bool(sub_0c8d3b25)
}

function sub_110e44c3(?) {
    return sub_110e44c3
}

function totalSupply() {
    return totalSupply
}

function sub_26e18bfb(?) {
    return sub_26e18bfb
}

function sub_31e171d9(?) {
    return sub_31e171d9
}

function sub_3b79474c(?) {
    return sub_3b79474c
}

function sub_3ba9dfd8(?) {
    return sub_3ba9dfd8
}

function getDocument(uint256 arg1) {
    return document[arg1]
}

function sub_45b77737(?) {
    return sub_45b77737
}

function sub_47a5b7e7(?) {
    return sub_47a5b7e7
}

function sub_49fe38ba(?) {
    return sub_49fe38ba
}

function sub_502f49c2(?) {
    return sub_502f49c2Address
}

function getInterestRate() {
    return interestRate
}

function sub_600c62e7(?) {
    return sub_a50ea0de
}

function balanceOf(address arg1) {
    return funderBalance[address(arg1)].field_256
}

function sub_76271d8b(?) {
    return sub_76271d8b
}

function sub_7acd7f48(?) {
    return sub_7acd7f48
}

function getContractState() {
    return contractState
}

function sub_86c7391c(?) {
    return sub_86c7391c
}

function sub_a10ae9cf(?) {
    return sub_a10ae9cf
}

function sub_a2faaceb(?) {
    return sub_a2faaceb[address(arg1)]
}

function sub_a50ea0de(?) {
    return sub_a50ea0de
}

function sub_a9c2609b(?) {
    return sub_a9c2609b[arg1].field_0, sub_a9c2609b[arg1].field_256, sub_a9c2609b[arg1].field_512
}

function sub_b7af57c9(?) {
    return sub_b7af57c9
}

function getFunderBalance(address arg1) {
    return funderBalance[address(arg1)].field_256
}

function sub_bc9b1090(?) {
    return sub_bc9b1090
}

function sub_cdac5b0b(?) {
    return sub_cdac5b0b
}

function sub_ece34fa1(?) {
    return bool(uint8(stor8.field_0))
}

function sub_ff5c086b(?) {
    return sub_ff5c086b
}

function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) {
    return block.hash(arg1)
}

function sub_bd9495c6(?) {
    return (stor30[arg1].field_1024 > stor27)
}

function sub_5bc5ad30(?) {
    return (sub_a9c2609b[arg1].field_1024 > stor27)
}

function setCurrentTime(uint256 arg1) {
    require sub_0c8d3b25
    stor49 = arg1
    emit 0x120d9f59: arg1
}

function getCurrentTime() {
    if not sub_0c8d3b25:
        return block.timestamp
    if not stor49:
        return block.timestamp
    return stor49
}

function sub_f58f59f5(?) {
    require sub_a9c2609b[arg1].field_768 <= (-86400 * stor36) - 1
    return ((24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_91873ebe(?) {
    require contractState != stor57
    require sub_a2faaceb[address(msg.sender)] >= stor2
    document[arg1] = arg2
    emit 0x4875c4a5: arg1, arg2
}

function sub_d4dfa3b1(?) {
    require contractState != stor57
    require sub_a2faaceb[address(msg.sender)] >= stor2
    stor10[stor11] = arg1
    sub_110e44c3++
    emit 0xe187363f: arg1
}

function currentBlock() {
    if not sub_0c8d3b25:
        return block.number, block.timestamp
    if not stor49:
        return block.number, block.timestamp
    return block.number, stor49
}

function sub_8e25fb5f(?) {
    if sub_a2faaceb[address(msg.sender)] < stor1:
        return sub_a2faaceb[address(msg.sender)] >= stor1
    if sub_a2faaceb[address(arg1)] < stor1:
        return sub_a2faaceb[address(arg1)] >= stor1
    if 1 == sub_a10ae9cf:
        return True
    return arg1 != msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require funderBalance[address(msg.sender)].field_256 >= arg2
    funderBalance[address(msg.sender)].field_256 -= arg2
    if stor0 == funderBalance[address(arg1)].field_0:
        funderBalance[address(arg1)].field_0 = arg1
    require funderBalance[address(arg1)].field_256 <= -arg2 - 1
    funderBalance[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_ff803150(?) payable {
    require contractState != stor57
    require sub_a50ea0de <= -msg.value - 1
    sub_a50ea0de += msg.value
    if sub_a2faaceb[address(arg1)] < stor3:
        sub_a2faaceb[address(arg1)] = stor3
        stor50[address(arg1)] = sub_86c7391c
    funderBalance[address(arg1)].field_0 = arg1
    require funderBalance[address(arg1)].field_256 <= -msg.value - 1
    funderBalance[address(arg1)].field_256 += msg.value
    require sub_bc9b1090 <= -msg.value - 1
    sub_bc9b1090 += msg.value
}

function sub_1a91844f(?) {
    require stor53 == contractState
    require sub_a2faaceb[address(msg.sender)] >= stor2
    require sub_502f49c2Address == arg2
    stor35[address(msg.sender)] = arg2
    require sub_b7af57c9 >= sub_a10ae9cf
    if sub_b7af57c9 - sub_a10ae9cf < 2:
        emit 0x93c88ebf: arg2
        contractState = stor54
        emit StateChange(stor54);
    else:
        if arg1 != msg.sender:
            if arg2 == stor35[address(arg1)]:
                emit 0x93c88ebf: arg2
                contractState = stor54
                emit StateChange(stor54);
}

function sub_1729438f(?) {
    require contractState == stor53
    require stor0 == stor30[stor31].field_0
    require sub_a2faaceb[address(msg.sender)] >= stor2
    stor30[stor31].field_0 = arg1
    stor30[stor31].field_256 = arg2
    if not sub_0c8d3b25:
        stor30[stor31].field_768 = block.timestamp
    else:
        if not stor49:
            stor30[stor31].field_768 = block.timestamp
        else:
            stor30[stor31].field_768 = stor49
    stor30[stor31].field_512 = arg3
    emit 0x63760da6: address(arg1), sub_3ba9dfd8, address(arg2), arg3
    sub_3ba9dfd8++
}

function sub_aba7ef95(?) {
    require contractState == stor54
    require stor0 == sub_a9c2609b[stor39].field_0
    require sub_a2faaceb[address(msg.sender)] >= stor2
    sub_a9c2609b[stor39].field_0 = arg1
    sub_a9c2609b[stor39].field_256 = arg2
    if not sub_0c8d3b25:
        sub_a9c2609b[stor39].field_768 = block.timestamp
    else:
        if not stor49:
            sub_a9c2609b[stor39].field_768 = block.timestamp
        else:
            sub_a9c2609b[stor39].field_768 = stor49
    sub_a9c2609b[stor39].field_512 = arg3
    emit 0x159c5e26: address(arg1), sub_47a5b7e7, address(arg2), arg3
    sub_47a5b7e7++
    require sub_3b79474c <= -arg3 - 1
    sub_3b79474c += arg3
}

function sub_82f31124(?) {
    require uint8(stor8.field_0)
    require stor0 == address(stor8.field_8)
    require contractState != stor57
    require sub_a2faaceb[address(msg.sender)] >= stor1
    if sub_a10ae9cf < 2:
        stor9[address(msg.sender)] = arg2
        address(stor8.field_8) = arg2
        contractState = stor57
    else:
        require sub_a2faaceb[address(arg1)] >= stor1
        require stor0 != arg1
        stor9[address(msg.sender)] = arg2
        if sub_a10ae9cf < 2:
            address(stor8.field_8) = arg2
            contractState = stor57
        else:
            if arg2 == stor9[address(arg1)]:
                address(stor8.field_8) = arg2
                contractState = stor57
}

function sub_7e9c799f(?) {
    require contractState == stor53
    require sub_a2faaceb[address(msg.sender)] >= stor2
    sub_502f49c2Address = arg1
    stor34 = eth.balance(this.address)
    if not sub_0c8d3b25:
        require block.timestamp <= (-31536000 * sub_31e171d9) - 1
        sub_ff5c086b = (8760 * 24 * 3600 * sub_31e171d9) + block.timestamp
    else:
        if not stor49:
            require block.timestamp <= (-31536000 * sub_31e171d9) - 1
            sub_ff5c086b = (8760 * 24 * 3600 * sub_31e171d9) + block.timestamp
        else:
            require stor49 <= (-31536000 * sub_31e171d9) - 1
            sub_ff5c086b = (8760 * 24 * 3600 * sub_31e171d9) + stor49
    emit 0x4d67d4e4: address(arg1), msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if funderBalance[address(msg.sender)].field_256 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if funderBalance[address(arg2)].field_256 + arg3 <= funderBalance[address(arg2)].field_256:
        return 0
    require funderBalance[address(arg1)].field_256 >= arg3
    funderBalance[address(arg1)].field_256 -= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require funderBalance[address(arg2)].field_256 <= -arg3 - 1
    funderBalance[address(arg2)].field_256 += arg3
    return 1
}

function sub_3f3813b7(?) {
    require stor54 == contractState
    require arg1 < sub_47a5b7e7
    require not sub_a9c2609b[arg1].field_1280
    require sub_a9c2609b[arg1].field_768 <= (-86400 * stor36) - 1
    if not sub_0c8d3b25:
        require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < block.timestamp
        else:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < stor49
    sub_a9c2609b[arg1].field_1280 = 1
    sub_a9c2609b[arg1].field_512 = 0
    emit 0x613ae14e: arg1
    require sub_3b79474c >= sub_a9c2609b[arg1].field_512
    sub_3b79474c -= sub_a9c2609b[arg1].field_512
}

function sub_801b378a(?) {
    require contractState >= stor53
    require sub_a2faaceb[address(msg.sender)] >= stor1
    if contractState == stor57:
        if address(stor8.field_8) == msg.sender:
            return eth.balance(this.address)
    if not sub_0c8d3b25:
        if block.timestamp > sub_ff5c086b:
            return eth.balance(this.address)
    else:
        if not stor49:
            if block.timestamp > sub_ff5c086b:
                return eth.balance(this.address)
        else:
            if stor49 > sub_ff5c086b:
                return eth.balance(this.address)
    if not stor24:
        require 0 > stor25
        require 0 >= stor25
        return -stor25
    require sub_bc9b1090 <= -1 / stor24
    require stor24 * sub_bc9b1090 / 10^18 > stor25
    require stor24 * sub_bc9b1090 / 10^18 >= stor25
    return ((stor24 * sub_bc9b1090 / 10^18) - stor25)
}

function sub_7285d509(?) {
    if contractState != stor53:
        require contractState == stor54
    require arg1 < sub_3ba9dfd8
    require sub_a2faaceb[address(msg.sender)] >= stor3
    require not stor32[address(msg.sender)]
    require stor30[arg1].field_768 <= (-86400 * stor28) - 1
    if not sub_0c8d3b25:
        require (24 * 3600 * stor28) + stor30[arg1].field_768 > block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor28) + stor30[arg1].field_768 > block.timestamp
        else:
            require (24 * 3600 * stor28) + stor30[arg1].field_768 > stor49
    stor32[address(msg.sender)] = funderBalance[address(msg.sender)].field_256
    require stor30[arg1].field_1024 <= -funderBalance[address(msg.sender)].field_256 - 1
    stor30[arg1].field_1024 += funderBalance[address(msg.sender)].field_256
    if stor30[arg1].field_1024 > stor27:
        emit 0xba3d67dc: arg1
}

function sub_bd0bd866(?) {
    require sub_86c7391c >= stor50[address(arg1)]
    require funderBalance[address(arg1)].field_256 <= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21
    if sub_bc9b1090:
        if not 10^18 * funderBalance[address(arg1)].field_256 / sub_bc9b1090:
            return 0
        require sub_86c7391c - stor50[address(arg1)] <= -1 / 10^18 * funderBalance[address(arg1)].field_256 / sub_bc9b1090
        return ((sub_86c7391c * 10^18 * funderBalance[address(arg1)].field_256 / sub_bc9b1090) - (stor50[address(arg1)] * 10^18 * funderBalance[address(arg1)].field_256 / sub_bc9b1090) / 10^18)
    if not 10^18 * funderBalance[address(arg1)].field_256:
        return 0
    require sub_86c7391c - stor50[address(arg1)] <= -1 / 10^18 * funderBalance[address(arg1)].field_256
    return ((10^18 * sub_86c7391c * funderBalance[address(arg1)].field_256) - (10^18 * stor50[address(arg1)] * funderBalance[address(arg1)].field_256) / 10^18)
}

function sub_f7f66d7f(?) {
    require contractState == stor54
    require arg1 < sub_47a5b7e7
    require sub_a2faaceb[address(msg.sender)] >= stor3
    require not stor42[address(msg.sender)]
    require sub_a9c2609b[arg1].field_768 <= (-86400 * stor36) - 1
    if not sub_0c8d3b25:
        require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 > block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 > block.timestamp
        else:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 > stor49
    stor42[address(msg.sender)] = funderBalance[address(msg.sender)].field_256
    require sub_a9c2609b[arg1].field_1024 <= -funderBalance[address(msg.sender)].field_256 - 1
    sub_a9c2609b[arg1].field_1024 += funderBalance[address(msg.sender)].field_256
    if sub_a9c2609b[arg1].field_1024 > stor27:
        emit 0x5dc099d4: arg1
        require sub_3b79474c >= sub_a9c2609b[arg1].field_512
        sub_3b79474c -= sub_a9c2609b[arg1].field_512
        sub_a9c2609b[arg1].field_512 = 0
        sub_a9c2609b[arg1].field_1280 = 1
}

function sub_47be9ee9(?) {
    if contractState != stor53:
        require contractState == stor54
    require arg1 < sub_3ba9dfd8
    require not stor30[arg1].field_1280
    require stor30[arg1].field_1024 <= stor27
    require stor30[arg1].field_768 <= (-86400 * stor28) - 1
    require stor30[arg1].field_768 <= (-86400 * stor29) - 1
    if not sub_0c8d3b25:
        require (24 * 3600 * stor28) + stor30[arg1].field_768 < block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor28) + stor30[arg1].field_768 < block.timestamp
        else:
            require (24 * 3600 * stor28) + stor30[arg1].field_768 < stor49
    if not sub_0c8d3b25:
        require (24 * 3600 * stor29) + stor30[arg1].field_768 > block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor29) + stor30[arg1].field_768 > block.timestamp
        else:
            require (24 * 3600 * stor29) + stor30[arg1].field_768 > stor49
    stor30[arg1].field_1280 = 1
    emit 0x3f5321b0: arg1
    call stor30[arg1].field_256 with:
       value stor30[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
}

function pay() payable {
    require contractState != stor57
    require stor52 == contractState
    require eth.balance(this.address) >= 0
    require eth.balance(this.address) < totalSupply
    funderBalance[address(msg.sender)].field_0 = msg.sender
    require funderBalance[address(msg.sender)].field_256 <= -msg.value - 1
    funderBalance[address(msg.sender)].field_256 += msg.value
    if sub_a2faaceb[address(msg.sender)] < stor3:
        sub_a2faaceb[address(msg.sender)] = stor3
    require sub_bc9b1090 <= -msg.value - 1
    sub_bc9b1090 += msg.value
    if not sub_0c8d3b25:
        emit 0xd8427c4a: block.timestamp, msg.value, funderBalance[address(msg.sender)].field_256, sub_bc9b1090, msg.sender
        if eth.balance(this.address) >= sub_76271d8b:
            contractState = stor53
            emit StateChange(stor53);
    else:
        if not stor49:
            emit 0xd8427c4a: block.timestamp, msg.value, funderBalance[address(msg.sender)].field_256, sub_bc9b1090, msg.sender
        else:
            emit 0xd8427c4a: stor49, msg.value, funderBalance[address(msg.sender)].field_256, sub_bc9b1090, msg.sender
        if eth.balance(this.address) >= sub_76271d8b:
            contractState = stor53
            emit StateChange(stor53);
}

function sub_0cefa42a(?) {
    require contractState == stor54
    require arg1 < sub_47a5b7e7
    require not sub_a9c2609b[arg1].field_1280
    require sub_a9c2609b[arg1].field_1024 <= stor27
    require sub_cdac5b0b >= sub_a9c2609b[arg1].field_512
    require sub_a9c2609b[arg1].field_768 <= (-86400 * stor36) - 1
    require sub_a9c2609b[arg1].field_768 <= (-86400 * stor37) - 1
    if not sub_0c8d3b25:
        require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < block.timestamp
        require (24 * 3600 * stor37) + sub_a9c2609b[arg1].field_768 > block.timestamp
    else:
        if not stor49:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < block.timestamp
            require (24 * 3600 * stor37) + sub_a9c2609b[arg1].field_768 > block.timestamp
        else:
            require (24 * 3600 * stor36) + sub_a9c2609b[arg1].field_768 < stor49
            require (24 * 3600 * stor37) + sub_a9c2609b[arg1].field_768 > stor49
    sub_a9c2609b[arg1].field_512 = 0
    sub_a9c2609b[arg1].field_1280 = 1
    emit 0x613ae14e: arg1
    require sub_cdac5b0b >= sub_a9c2609b[arg1].field_512
    sub_cdac5b0b -= sub_a9c2609b[arg1].field_512
    require sub_3b79474c >= sub_a9c2609b[arg1].field_512
    sub_3b79474c -= sub_a9c2609b[arg1].field_512
    call sub_a9c2609b[arg1].field_256 with:
       value sub_a9c2609b[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
}

function claimInterest() {
    require stor57 != contractState
    require sub_a2faaceb[address(msg.sender)] >= stor3
    require stor50[address(msg.sender)] < sub_86c7391c
    require sub_86c7391c >= stor50[address(msg.sender)]
    require funderBalance[address(msg.sender)].field_256 <= 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21
    if sub_bc9b1090:
        if not 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090:
            stor50[address(msg.sender)] = sub_86c7391c
            call msg.sender with:
                 gas 2300 * is_zero(value) wei
            emit 0xbbf701f6: 0, msg.sender
        else:
            require sub_86c7391c - stor50[address(msg.sender)] <= -1 / 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090
            stor50[address(msg.sender)] = sub_86c7391c
            call msg.sender with:
               value (sub_86c7391c * 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090) - (stor50[address(msg.sender)] * 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090) / 10^18 wei
                 gas 2300 * is_zero(value) wei
            emit 0xbbf701f6: ((sub_86c7391c * 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090) - (stor50[address(msg.sender)] * 10^18 * funderBalance[address(msg.sender)].field_256 / sub_bc9b1090) / 10^18), msg.sender
    else:
        if not 10^18 * funderBalance[address(msg.sender)].field_256:
            stor50[address(msg.sender)] = sub_86c7391c
            call msg.sender with:
                 gas 2300 * is_zero(value) wei
            emit 0xbbf701f6: 0, msg.sender
        else:
            require sub_86c7391c - stor50[address(msg.sender)] <= -1 / 10^18 * funderBalance[address(msg.sender)].field_256
            stor50[address(msg.sender)] = sub_86c7391c
            call msg.sender with:
               value (10^18 * sub_86c7391c * funderBalance[address(msg.sender)].field_256) - (10^18 * stor50[address(msg.sender)] * funderBalance[address(msg.sender)].field_256) / 10^18 wei
                 gas 2300 * is_zero(value) wei
            emit 0xbbf701f6: ((10^18 * sub_86c7391c * funderBalance[address(msg.sender)].field_256) - (10^18 * stor50[address(msg.sender)] * funderBalance[address(msg.sender)].field_256) / 10^18), msg.sender
}

function sub_69e54deb(?) {
    require stor30[arg1].field_768 <= (-86400 * stor28) - 1
    require stor30[arg1].field_768 <= (-86400 * stor29) - 1
    if stor30[arg1].field_1024 > stor27:
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               stor30[arg1].field_1024 <= stor27,
               stor30[arg1].field_1024 <= stor27
    if not sub_0c8d3b25:
        if block.timestamp <= (24 * 3600 * stor28) + stor30[arg1].field_768:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768
        if block.timestamp >= (24 * 3600 * stor29) + stor30[arg1].field_768:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   block.timestamp < (24 * 3600 * stor29) + stor30[arg1].field_768
        if stor30[arg1].field_1280:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   not bool(stor30[arg1].field_1280)
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
               eth.balance(this.address) >= stor30[arg1].field_512
    if not stor49:
        if block.timestamp <= (24 * 3600 * stor28) + stor30[arg1].field_768:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768
        if block.timestamp >= (24 * 3600 * stor29) + stor30[arg1].field_768:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   block.timestamp < (24 * 3600 * stor29) + stor30[arg1].field_768
        if stor30[arg1].field_1280:
            return stor30[arg1].field_0, 
                   stor30[arg1].field_256,
                   stor30[arg1].field_512,
                   stor30[arg1].field_768,
                   stor30[arg1].field_1024,
                   block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
                   not bool(stor30[arg1].field_1280)
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               block.timestamp > (24 * 3600 * stor28) + stor30[arg1].field_768,
               eth.balance(this.address) >= stor30[arg1].field_512
    if stor49 <= (24 * 3600 * stor28) + stor30[arg1].field_768:
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               stor49 > (24 * 3600 * stor28) + stor30[arg1].field_768,
               stor49 > (24 * 3600 * stor28) + stor30[arg1].field_768
    if stor49 >= (24 * 3600 * stor29) + stor30[arg1].field_768:
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               stor49 > (24 * 3600 * stor28) + stor30[arg1].field_768,
               stor49 < (24 * 3600 * stor29) + stor30[arg1].field_768
    if stor30[arg1].field_1280:
        return stor30[arg1].field_0, 
               stor30[arg1].field_256,
               stor30[arg1].field_512,
               stor30[arg1].field_768,
               stor30[arg1].field_1024,
               stor49 > (24 * 3600 * stor28) + stor30[arg1].field_768,
               not bool(stor30[arg1].field_1280)
    return stor30[arg1].field_0, 
           stor30[arg1].field_256,
           stor30[arg1].field_512,
           stor30[arg1].field_768,
           stor30[arg1].field_1024,
           stor49 > (24 * 3600 * stor28) + stor30[arg1].field_768,
           eth.balance(this.address) >= stor30[arg1].field_512
}

function sub_ed591a55(?) {
    require contractState != stor57
    require sub_a2faaceb[address(msg.sender)] >= stor1
    require sub_a2faaceb[address(arg1)] >= stor1
    if sub_a10ae9cf != 1:
        require arg1 != msg.sender
    stor20[address(msg.sender)].field_0 = arg2
    stor20[address(msg.sender)].field_256 = arg3
    if sub_a10ae9cf == 1:
        if sub_a2faaceb[address(arg2)] < stor1:
            if arg3 >= stor1:
                sub_a10ae9cf++
            sub_a2faaceb[address(arg2)] = arg3
            emit 0xf17057c0: arg3, arg2
            if sub_a2faaceb[address(arg2)] < stor2:
                if arg3 >= stor2:
                    sub_b7af57c9++
            else:
                if arg3 < stor2:
                    sub_b7af57c9--
                else:
                    if sub_a2faaceb[address(arg2)] < stor2:
                        if arg3 >= stor2:
                            sub_b7af57c9++
        else:
            if arg3 < stor1:
                require sub_a10ae9cf > 1
                sub_a10ae9cf--
                sub_a2faaceb[address(arg2)] = arg3
                emit 0xf17057c0: arg3, arg2
                if sub_a2faaceb[address(arg2)] < stor2:
                    if arg3 >= stor2:
                        sub_b7af57c9++
                else:
                    if arg3 < stor2:
                        sub_b7af57c9--
                    else:
                        if sub_a2faaceb[address(arg2)] < stor2:
                            if arg3 >= stor2:
                                sub_b7af57c9++
            else:
                if sub_a2faaceb[address(arg2)] >= stor1:
                    sub_a2faaceb[address(arg2)] = arg3
                    emit 0xf17057c0: arg3, arg2
                    if sub_a2faaceb[address(arg2)] < stor2:
                        if arg3 >= stor2:
                            sub_b7af57c9++
                    else:
                        if arg3 < stor2:
                            sub_b7af57c9--
                        else:
                            if sub_a2faaceb[address(arg2)] < stor2:
                                if arg3 >= stor2:
                                    sub_b7af57c9++
                else:
                    if arg3 >= stor1:
                        sub_a10ae9cf++
                    sub_a2faaceb[address(arg2)] = arg3
                    emit 0xf17057c0: arg3, arg2
                    if sub_a2faaceb[address(arg2)] < stor2:
                        if arg3 >= stor2:
                            sub_b7af57c9++
                    else:
                        if arg3 < stor2:
                            sub_b7af57c9--
                        else:
                            if sub_a2faaceb[address(arg2)] < stor2:
                                if arg3 >= stor2:
                                    sub_b7af57c9++
    else:
        if arg1 != msg.sender:
            if stor20[address(arg1)].field_0 == stor20[msg.sender].field_0:
                if stor20[msg.sender].field_256 == stor20[address(arg1)].field_256:
                    if sub_a2faaceb[address(arg2)] < stor1:
                        if arg3 >= stor1:
                            sub_a10ae9cf++
                        sub_a2faaceb[address(arg2)] = arg3
                        emit 0xf17057c0: arg3, arg2
                        if sub_a2faaceb[address(arg2)] < stor2:
                            if arg3 >= stor2:
                                sub_b7af57c9++
                        else:
                            if arg3 < stor2:
                                sub_b7af57c9--
                            else:
                                if sub_a2faaceb[address(arg2)] < stor2:
                                    if arg3 >= stor2:
                                        sub_b7af57c9++
                    else:
                        if arg3 < stor1:
                            require sub_a10ae9cf > 1
                            sub_a10ae9cf--
                            sub_a2faaceb[address(arg2)] = arg3
                            emit 0xf17057c0: arg3, arg2
                            if sub_a2faaceb[address(arg2)] < stor2:
                                if arg3 >= stor2:
                                    sub_b7af57c9++
                            else:
                                if arg3 < stor2:
                                    sub_b7af57c9--
                                else:
                                    if sub_a2faaceb[address(arg2)] < stor2:
                                        if arg3 >= stor2:
                                            sub_b7af57c9++
                        else:
                            if sub_a2faaceb[address(arg2)] >= stor1:
                                sub_a2faaceb[address(arg2)] = arg3
                                emit 0xf17057c0: arg3, arg2
                                if sub_a2faaceb[address(arg2)] < stor2:
                                    if arg3 >= stor2:
                                        sub_b7af57c9++
                                else:
                                    if arg3 < stor2:
                                        sub_b7af57c9--
                                    else:
                                        if sub_a2faaceb[address(arg2)] < stor2:
                                            if arg3 >= stor2:
                                                sub_b7af57c9++
                            else:
                                if arg3 >= stor1:
                                    sub_a10ae9cf++
                                sub_a2faaceb[address(arg2)] = arg3
                                emit 0xf17057c0: arg3, arg2
                                if sub_a2faaceb[address(arg2)] < stor2:
                                    if arg3 >= stor2:
                                        sub_b7af57c9++
                                else:
                                    if arg3 < stor2:
                                        sub_b7af57c9--
                                    else:
                                        if sub_a2faaceb[address(arg2)] < stor2:
                                            if arg3 >= stor2:
                                                sub_b7af57c9++
}

function sub_2bcf083f(?) {
    require contractState >= stor53
    require sub_a2faaceb[address(msg.sender)] >= stor1
    if not sub_0c8d3b25:
        if contractState != stor57:
            if block.timestamp > sub_ff5c086b:
                require eth.balance(this.address) >= arg2
                if eth.balance(this.address) <= arg2:
                    require stor25 <= -eth.balance(this.address) - 1
                    stor25 += eth.balance(this.address)
                    call arg1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor25 <= -arg2 - 1
                    stor25 += arg2
                    call arg1 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
            else:
                if not stor24:
                    require 0 > stor25
                    require 0 >= stor25
                    require -stor25 >= arg2
                    if -stor25 <= arg2:
                        require stor25 <= stor25 - 1
                        stor25 = 0
                        call arg1 with:
                           value -stor25 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require sub_bc9b1090 <= -1 / stor24
                    require stor24 * sub_bc9b1090 / 10^18 > stor25
                    require stor24 * sub_bc9b1090 / 10^18 >= stor25
                    require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                    if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                        require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                        stor25 = stor24 * sub_bc9b1090 / 10^18
                        call arg1 with:
                           value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
        else:
            if address(stor8.field_8) == msg.sender:
                require eth.balance(this.address) >= arg2
                if eth.balance(this.address) <= arg2:
                    require stor25 <= -eth.balance(this.address) - 1
                    stor25 += eth.balance(this.address)
                    call arg1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor25 <= -arg2 - 1
                    stor25 += arg2
                    call arg1 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
            else:
                if block.timestamp > sub_ff5c086b:
                    require eth.balance(this.address) >= arg2
                    if eth.balance(this.address) <= arg2:
                        require stor25 <= -eth.balance(this.address) - 1
                        stor25 += eth.balance(this.address)
                        call arg1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not stor24:
                        require 0 > stor25
                        require 0 >= stor25
                        require -stor25 >= arg2
                        if -stor25 <= arg2:
                            require stor25 <= stor25 - 1
                            stor25 = 0
                            call arg1 with:
                               value -stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require sub_bc9b1090 <= -1 / stor24
                        require stor24 * sub_bc9b1090 / 10^18 > stor25
                        require stor24 * sub_bc9b1090 / 10^18 >= stor25
                        require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                        if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                            require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                            stor25 = stor24 * sub_bc9b1090 / 10^18
                            call arg1 with:
                               value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not stor49:
            if contractState != stor57:
                if block.timestamp > sub_ff5c086b:
                    require eth.balance(this.address) >= arg2
                    if eth.balance(this.address) <= arg2:
                        require stor25 <= -eth.balance(this.address) - 1
                        stor25 += eth.balance(this.address)
                        call arg1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not stor24:
                        require 0 > stor25
                        require 0 >= stor25
                        require -stor25 >= arg2
                        if -stor25 <= arg2:
                            require stor25 <= stor25 - 1
                            stor25 = 0
                            call arg1 with:
                               value -stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require sub_bc9b1090 <= -1 / stor24
                        require stor24 * sub_bc9b1090 / 10^18 > stor25
                        require stor24 * sub_bc9b1090 / 10^18 >= stor25
                        require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                        if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                            require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                            stor25 = stor24 * sub_bc9b1090 / 10^18
                            call arg1 with:
                               value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
            else:
                if address(stor8.field_8) == msg.sender:
                    require eth.balance(this.address) >= arg2
                    if eth.balance(this.address) <= arg2:
                        require stor25 <= -eth.balance(this.address) - 1
                        stor25 += eth.balance(this.address)
                        call arg1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp > sub_ff5c086b:
                        require eth.balance(this.address) >= arg2
                        if eth.balance(this.address) <= arg2:
                            require stor25 <= -eth.balance(this.address) - 1
                            stor25 += eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if not stor24:
                            require 0 > stor25
                            require 0 >= stor25
                            require -stor25 >= arg2
                            if -stor25 <= arg2:
                                require stor25 <= stor25 - 1
                                stor25 = 0
                                call arg1 with:
                                   value -stor25 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require stor25 <= -arg2 - 1
                                stor25 += arg2
                                call arg1 with:
                                   value arg2 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require sub_bc9b1090 <= -1 / stor24
                            require stor24 * sub_bc9b1090 / 10^18 > stor25
                            require stor24 * sub_bc9b1090 / 10^18 >= stor25
                            require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                            if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                                require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                                stor25 = stor24 * sub_bc9b1090 / 10^18
                                call arg1 with:
                                   value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require stor25 <= -arg2 - 1
                                stor25 += arg2
                                call arg1 with:
                                   value arg2 wei
                                     gas 2300 * is_zero(value) wei
        else:
            if contractState != stor57:
                if stor49 > sub_ff5c086b:
                    require eth.balance(this.address) >= arg2
                    if eth.balance(this.address) <= arg2:
                        require stor25 <= -eth.balance(this.address) - 1
                        stor25 += eth.balance(this.address)
                        call arg1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not stor24:
                        require 0 > stor25
                        require 0 >= stor25
                        require -stor25 >= arg2
                        if -stor25 <= arg2:
                            require stor25 <= stor25 - 1
                            stor25 = 0
                            call arg1 with:
                               value -stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require sub_bc9b1090 <= -1 / stor24
                        require stor24 * sub_bc9b1090 / 10^18 > stor25
                        require stor24 * sub_bc9b1090 / 10^18 >= stor25
                        require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                        if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                            require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                            stor25 = stor24 * sub_bc9b1090 / 10^18
                            call arg1 with:
                               value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
            else:
                if address(stor8.field_8) == msg.sender:
                    require eth.balance(this.address) >= arg2
                    if eth.balance(this.address) <= arg2:
                        require stor25 <= -eth.balance(this.address) - 1
                        stor25 += eth.balance(this.address)
                        call arg1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require stor25 <= -arg2 - 1
                        stor25 += arg2
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if stor49 > sub_ff5c086b:
                        require eth.balance(this.address) >= arg2
                        if eth.balance(this.address) <= arg2:
                            require stor25 <= -eth.balance(this.address) - 1
                            stor25 += eth.balance(this.address)
                            call arg1 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor25 <= -arg2 - 1
                            stor25 += arg2
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if not stor24:
                            require 0 > stor25
                            require 0 >= stor25
                            require -stor25 >= arg2
                            if -stor25 <= arg2:
                                require stor25 <= stor25 - 1
                                stor25 = 0
                                call arg1 with:
                                   value -stor25 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require stor25 <= -arg2 - 1
                                stor25 += arg2
                                call arg1 with:
                                   value arg2 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require sub_bc9b1090 <= -1 / stor24
                            require stor24 * sub_bc9b1090 / 10^18 > stor25
                            require stor24 * sub_bc9b1090 / 10^18 >= stor25
                            require (stor24 * sub_bc9b1090 / 10^18) - stor25 >= arg2
                            if (stor24 * sub_bc9b1090 / 10^18) - stor25 <= arg2:
                                require stor25 <= -(stor24 * sub_bc9b1090 / 10^18) + stor25 - 1
                                stor25 = stor24 * sub_bc9b1090 / 10^18
                                call arg1 with:
                                   value (stor24 * sub_bc9b1090 / 10^18) - stor25 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require stor25 <= -arg2 - 1
                                stor25 += arg2
                                call arg1 with:
                                   value arg2 wei
                                     gas 2300 * is_zero(value) wei
}

function sub_47d77817(?) {
    require contractState == stor51
    require sub_a2faaceb[address(msg.sender)] >= stor2
    stor21[address(msg.sender)].field_0 = arg2
    stor21[address(msg.sender)].field_256 = arg3
    stor21[address(msg.sender)].field_512 = arg4
    stor21[address(msg.sender)].field_768 = arg5
    stor21[address(msg.sender)].field_1024 = arg6
    require sub_b7af57c9 >= sub_a10ae9cf
    if arg2 != stor21[arg1].field_0:
        if sub_b7af57c9 - sub_a10ae9cf < 2:
            if stor0 == document[stor13]:
                if sub_b7af57c9 - sub_a10ae9cf < 2:
                    if stor0 != document[stor13]:
                        contractState = stor52
                        sub_76271d8b = arg2
                        require sub_76271d8b <= -1 / 101 * 10^16
                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                        sub_45b77737 = arg2
                        sub_49fe38ba = arg3
                        sub_31e171d9 = arg4
                        interestRate = arg5
                        stor6 = arg5 / 12
                        stor24 = arg6
                        emit StateChange(contractState);
            else:
                if stor0 == document[stor14]:
                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                        if stor0 != document[stor14]:
                            contractState = stor52
                            sub_76271d8b = arg2
                            require sub_76271d8b <= -1 / 101 * 10^16
                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                            sub_45b77737 = arg2
                            sub_49fe38ba = arg3
                            sub_31e171d9 = arg4
                            interestRate = arg5
                            stor6 = arg5 / 12
                            stor24 = arg6
                            emit StateChange(contractState);
                else:
                    if stor0 == document[stor15]:
                        if sub_b7af57c9 - sub_a10ae9cf < 2:
                            if stor0 != document[stor15]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if sub_b7af57c9 - sub_a10ae9cf < 2:
                            if stor0 != document[stor16]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
        else:
            if stor0 == document[stor13]:
                if arg2 == stor21[arg1].field_0:
                    if stor0 != document[stor13]:
                        contractState = stor52
                        sub_76271d8b = arg2
                        require sub_76271d8b <= -1 / 101 * 10^16
                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                        sub_45b77737 = arg2
                        sub_49fe38ba = arg3
                        sub_31e171d9 = arg4
                        interestRate = arg5
                        stor6 = arg5 / 12
                        stor24 = arg6
                        emit StateChange(contractState);
            else:
                if stor0 == document[stor14]:
                    if arg2 == stor21[arg1].field_0:
                        if stor0 != document[stor14]:
                            contractState = stor52
                            sub_76271d8b = arg2
                            require sub_76271d8b <= -1 / 101 * 10^16
                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                            sub_45b77737 = arg2
                            sub_49fe38ba = arg3
                            sub_31e171d9 = arg4
                            interestRate = arg5
                            stor6 = arg5 / 12
                            stor24 = arg6
                            emit StateChange(contractState);
                else:
                    if stor0 == document[stor15]:
                        if arg2 == stor21[arg1].field_0:
                            if stor0 != document[stor15]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if arg2 == stor21[arg1].field_0:
                            if stor0 != document[stor16]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
    else:
        if arg3 != stor21[address(arg1)].field_256:
            if sub_b7af57c9 - sub_a10ae9cf < 2:
                if stor0 == document[stor13]:
                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                        if stor0 != document[stor13]:
                            contractState = stor52
                            sub_76271d8b = arg2
                            require sub_76271d8b <= -1 / 101 * 10^16
                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                            sub_45b77737 = arg2
                            sub_49fe38ba = arg3
                            sub_31e171d9 = arg4
                            interestRate = arg5
                            stor6 = arg5 / 12
                            stor24 = arg6
                            emit StateChange(contractState);
                else:
                    if stor0 == document[stor14]:
                        if sub_b7af57c9 - sub_a10ae9cf < 2:
                            if stor0 != document[stor14]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if stor0 == document[stor15]:
                            if sub_b7af57c9 - sub_a10ae9cf < 2:
                                if stor0 != document[stor15]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if sub_b7af57c9 - sub_a10ae9cf < 2:
                                if stor0 != document[stor16]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
            else:
                if stor0 == document[stor13]:
                    if arg3 == stor21[address(arg1)].field_256:
                        if stor0 != document[stor13]:
                            contractState = stor52
                            sub_76271d8b = arg2
                            require sub_76271d8b <= -1 / 101 * 10^16
                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                            sub_45b77737 = arg2
                            sub_49fe38ba = arg3
                            sub_31e171d9 = arg4
                            interestRate = arg5
                            stor6 = arg5 / 12
                            stor24 = arg6
                            emit StateChange(contractState);
                else:
                    if stor0 == document[stor14]:
                        if arg3 == stor21[address(arg1)].field_256:
                            if stor0 != document[stor14]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if stor0 == document[stor15]:
                            if arg3 == stor21[address(arg1)].field_256:
                                if stor0 != document[stor15]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if arg3 == stor21[address(arg1)].field_256:
                                if stor0 != document[stor16]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
        else:
            if arg4 != stor21[address(arg1)].field_512:
                if sub_b7af57c9 - sub_a10ae9cf < 2:
                    if stor0 == document[stor13]:
                        if sub_b7af57c9 - sub_a10ae9cf < 2:
                            if stor0 != document[stor13]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if stor0 == document[stor14]:
                            if sub_b7af57c9 - sub_a10ae9cf < 2:
                                if stor0 != document[stor14]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor15]:
                                if sub_b7af57c9 - sub_a10ae9cf < 2:
                                    if stor0 != document[stor15]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if sub_b7af57c9 - sub_a10ae9cf < 2:
                                    if stor0 != document[stor16]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                else:
                    if stor0 == document[stor13]:
                        if arg4 == stor21[address(arg1)].field_512:
                            if stor0 != document[stor13]:
                                contractState = stor52
                                sub_76271d8b = arg2
                                require sub_76271d8b <= -1 / 101 * 10^16
                                totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                sub_45b77737 = arg2
                                sub_49fe38ba = arg3
                                sub_31e171d9 = arg4
                                interestRate = arg5
                                stor6 = arg5 / 12
                                stor24 = arg6
                                emit StateChange(contractState);
                    else:
                        if stor0 == document[stor14]:
                            if arg4 == stor21[address(arg1)].field_512:
                                if stor0 != document[stor14]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor15]:
                                if arg4 == stor21[address(arg1)].field_512:
                                    if stor0 != document[stor15]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if arg4 == stor21[address(arg1)].field_512:
                                    if stor0 != document[stor16]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
            else:
                if arg5 != stor21[address(arg1)].field_768:
                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                        if stor0 == document[stor13]:
                            if sub_b7af57c9 - sub_a10ae9cf < 2:
                                if stor0 != document[stor13]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor14]:
                                if sub_b7af57c9 - sub_a10ae9cf < 2:
                                    if stor0 != document[stor14]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if stor0 == document[stor15]:
                                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                                        if stor0 != document[stor15]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                                else:
                                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                                        if stor0 != document[stor16]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                    else:
                        if stor0 == document[stor13]:
                            if arg5 == stor21[address(arg1)].field_768:
                                if stor0 != document[stor13]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor14]:
                                if arg5 == stor21[address(arg1)].field_768:
                                    if stor0 != document[stor14]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if stor0 == document[stor15]:
                                    if arg5 == stor21[address(arg1)].field_768:
                                        if stor0 != document[stor15]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                                else:
                                    if arg5 == stor21[address(arg1)].field_768:
                                        if stor0 != document[stor16]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                else:
                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                        if stor0 == document[stor13]:
                            if sub_b7af57c9 - sub_a10ae9cf < 2:
                                if stor0 != document[stor13]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor14]:
                                if sub_b7af57c9 - sub_a10ae9cf < 2:
                                    if stor0 != document[stor14]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if stor0 == document[stor15]:
                                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                                        if stor0 != document[stor15]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                                else:
                                    if sub_b7af57c9 - sub_a10ae9cf < 2:
                                        if stor0 != document[stor16]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                    else:
                        if stor0 == document[stor13]:
                            if arg6 == stor21[address(arg1)].field_1024:
                                if stor0 != document[stor13]:
                                    contractState = stor52
                                    sub_76271d8b = arg2
                                    require sub_76271d8b <= -1 / 101 * 10^16
                                    totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                    sub_45b77737 = arg2
                                    sub_49fe38ba = arg3
                                    sub_31e171d9 = arg4
                                    interestRate = arg5
                                    stor6 = arg5 / 12
                                    stor24 = arg6
                                    emit StateChange(contractState);
                        else:
                            if stor0 == document[stor14]:
                                if arg6 == stor21[address(arg1)].field_1024:
                                    if stor0 != document[stor14]:
                                        contractState = stor52
                                        sub_76271d8b = arg2
                                        require sub_76271d8b <= -1 / 101 * 10^16
                                        totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                        sub_45b77737 = arg2
                                        sub_49fe38ba = arg3
                                        sub_31e171d9 = arg4
                                        interestRate = arg5
                                        stor6 = arg5 / 12
                                        stor24 = arg6
                                        emit StateChange(contractState);
                            else:
                                if stor0 == document[stor15]:
                                    if arg6 == stor21[address(arg1)].field_1024:
                                        if stor0 != document[stor15]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
                                else:
                                    if arg6 == stor21[address(arg1)].field_1024:
                                        if stor0 != document[stor16]:
                                            contractState = stor52
                                            sub_76271d8b = arg2
                                            require sub_76271d8b <= -1 / 101 * 10^16
                                            totalSupply = 101 * 10^16 * sub_76271d8b / 10^18
                                            sub_45b77737 = arg2
                                            sub_49fe38ba = arg3
                                            sub_31e171d9 = arg4
                                            interestRate = arg5
                                            stor6 = arg5 / 12
                                            stor24 = arg6
                                            emit StateChange(contractState);
}



}
