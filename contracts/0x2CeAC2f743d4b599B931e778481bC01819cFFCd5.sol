contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor4 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    require not uint8(stor3.field_160)
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args stor0, 4000 * 10^18
    require delegate.return_code
    stor0 = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args stor1[0x7704c758db402bb7b1c2bbada8af43b6b758b794], 4000 * 10^18
    require delegate.return_code
    stor1[0x7704c758db402bb7b1c2bbada8af43b6b758b794] = delegate.return_data[0]
    emit 0xf6798a56: 4000 * 10^18
    emit 0x7704c758: 4000 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  4000 * 10^18,
    emit 0x0: 4000 * 10^18
    emit 0x7704c758: 4000 * 10^18
    require not uint8(stor3.field_160)
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args stor0, 1000 * 10^18
    require delegate.return_code
    stor0 = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args stor1[0xbb3465742ca0b93eea8ca9362f2c4bb6240bf942], 1000 * 10^18
    require delegate.return_code
    stor1[0xbb3465742ca0b93eea8ca9362f2c4bb6240bf942] = delegate.return_data[0]
    emit 0xf6798a56: 1000 * 10^18
    emit 0xbb346574: 1000 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  1000 * 10^18,
    emit 0x0: 1000 * 10^18
    emit 0xbb346574: 1000 * 10^18
    stor4 = block.timestamp
    address(stor3.field_0) = msg.sender
    return code.data[752 len 3799]
}



// =====================  Runtime code  =====================


const name = 'Green Coin'

const decimals = 18

const symbol = 'GREEN'

const MaxSupply = 10000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 _startTime;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _startTime() {
    return _startTime
}

function IsICOOver() {
    if not stor3:
        return 0
    return 1
}

function IsICONotStarted() {
    if block.timestamp >= _startTime:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function GetMaxEther() {
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args 10000000 * 10^18, totalSupply
    require delegate.return_code
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xa391c15b with:
         gas gas_remaining - 710 wei
        args delegate.return_data[0], 10000
    require delegate.return_code
    return delegate.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], arg2
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg2)], arg3
    require delegate.return_code
    balanceOf[address(arg2)] = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg3
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args allowance[address(arg1)][address(msg.sender)], arg3
    require delegate.return_code
    allowance[address(arg1)][address(msg.sender)] = delegate.return_data[0]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor3
    require block.timestamp >= _startTime
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args 10000000 * 10^18, totalSupply
    require delegate.return_code
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xa391c15b with:
         gas gas_remaining - 710 wei
        args delegate.return_data[0], 10000
    require delegate.return_code
    if delegate.return_data[0] > msg.value:
        require not stor3
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
             gas gas_remaining - 710 wei
            args totalSupply, 10000 * msg.value
        require delegate.return_code
        totalSupply = delegate.return_data[0]
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
             gas gas_remaining - 710 wei
            args balanceOf[address(msg.sender)], 10000 * msg.value
        require delegate.return_code
        balanceOf[address(msg.sender)] = delegate.return_data[0]
        emit 0xf6798a56: (10000 * msg.value), msg.sender
        emit Transfer((10000 * msg.value), 0, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args 10000000 * 10^18, totalSupply
        require delegate.return_code
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xa391c15b with:
             gas gas_remaining - 710 wei
            args delegate.return_data[0], 10000
        require delegate.return_code
        require not stor3
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
             gas gas_remaining - 710 wei
            args totalSupply, 10000 * delegate.return_data[0]
        require delegate.return_code
        totalSupply = delegate.return_data[0]
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
             gas gas_remaining - 710 wei
            args balanceOf[address(msg.sender)], 10000 * delegate.return_data[0]
        require delegate.return_code
        balanceOf[address(msg.sender)] = delegate.return_data[0]
        emit 0xf6798a56: (10000 * delegate.return_data[0]), msg.sender
        emit Transfer((10000 * delegate.return_data[0]), 0, msg.sender);
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args 10000000 * 10^18, totalSupply
        require delegate.return_code
        require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
        delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xa391c15b with:
             gas gas_remaining - 710 wei
            args delegate.return_data[0], 10000
        require delegate.return_code
        call owner with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor3 = 1
        emit MintFinished()
}



}
