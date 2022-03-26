contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint256 stor5;
address stor9;

function _fallback() payable {
    mem[96 len -4534] = code.data[5078 len -4534]
    mem[64] = -4438
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = 18
    stor1 = 0
    stor5[msg.sender] = 0
    stor9 = mem[108 len 20]
    return code.data[544 len 4534]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 limit;
uint256 fee;
address regAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(bytes32 arg1) {
    return balanceOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function reg() {
    return regAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function limit() {
    return limit
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][sha3(arg2)]
}

function fee() {
    return fee
}

function allowance(bytes32 arg1, bytes32 arg2) {
    return allowance[arg1][arg2]
}

function kill() {
    revert 
}

function unapprove(bytes32 arg1) {
    allowance[msg.sender][arg1] = 0
}

function unapprove(address arg1) {
    allowance[msg.sender][sha3(arg1)] = 0
}

function setFee(uint256 arg1) {
    require owner == msg.sender
    fee = arg1
}

function setLimit(uint256 arg1) {
    require owner == msg.sender
    limit = arg1
}

function delegate(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][sha3(arg1)] += arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approve(bytes32 arg1, uint256 arg2) {
    allowance[msg.sender][arg1] += arg2
    emit ApprovalHash(arg2, sha3(msg.sender), arg1);
    return 1
}

function _fallback() payable {
    require balanceOf[msg.sender] + msg.value <= limit
    balanceOf[msg.sender] += msg.value
    totalSupply += msg.value
}

function refill(bytes32 arg1) payable {
    require balanceOf[arg1] + msg.value <= limit
    balanceOf[arg1] += msg.value
    totalSupply += msg.value
    return 1
}

function refill(address arg1) payable {
    require balanceOf[arg1] + msg.value <= limit
    balanceOf[arg1] += msg.value
    totalSupply += msg.value
    return 1
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[msg.sender] < arg2:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(bytes32 arg1, uint256 arg2) {
    if balanceOf[msg.sender] < arg2:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit TransferHash(arg2, sha3(msg.sender), arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[arg1][sha3(msg.sender)] > balanceOf[arg1]:
        if balanceOf[arg1] < arg3:
            return 0
    else:
        if allowance[arg1][sha3(msg.sender)] < arg3:
            return 0
    allowance[arg1][sha3(msg.sender)] -= arg3
    balanceOf[arg1] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    if allowance[arg1][sha3(msg.sender)] > balanceOf[arg1]:
        if balanceOf[arg1] < arg3:
            return 0
    else:
        if allowance[arg1][sha3(msg.sender)] < arg3:
            return 0
    allowance[arg1][sha3(msg.sender)] -= arg3
    balanceOf[arg1] -= arg3
    balanceOf[arg2] += arg3
    emit TransferHash(arg3, arg1, arg2);
    return 1
}

function sendFrom(bytes32 arg1, address arg2, uint256 arg3) {
    if allowance[arg1][sha3(msg.sender)] > balanceOf[arg1]:
        if balanceOf[arg1] < arg3:
    else:
        if allowance[arg1][sha3(msg.sender)] < arg3:
    allowance[arg1][sha3(msg.sender)] -= arg3
    balanceOf[arg1] -= arg3
    totalSupply -= arg3
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function secureUnapprove(bytes32 arg1) {
    require ext_code.size(regAddress)
    call regAddress.addr(string rg1) with:
         gas gas_remaining - 50 wei
        args 'AiraSecure'
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(regAddress)
    call regAddress.addr(string rg1) with:
         gas gas_remaining - 50 wei
        args 'AiraEth'
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        allowance[arg1][sha3(address(ext_call.return_data[0]))] = 0
}

function secureApprove(bytes32 arg1, uint256 arg2) {
    require ext_code.size(regAddress)
    call regAddress.addr(string rg1) with:
         gas gas_remaining - 50 wei
        args 'AiraSecure'
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(regAddress)
    call regAddress.addr(string rg1) with:
         gas gas_remaining - 50 wei
        args 'AiraEth'
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        allowance[arg1][sha3(address(ext_call.return_data[0]))] += arg2
        emit ApprovalHash(arg2, arg1, sha3(address(ext_call.return_data[0])));
}

function activate(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if fee <= 0:
        if limit <= 0:
            mem[ceil32(arg1.length) + 128] = address(msg.sender)
            balanceOf[msg.sender] += msg.value
            totalSupply += msg.value
        else:
            if msg.value <= limit:
                mem[ceil32(arg1.length) + 128] = address(msg.sender)
                balanceOf[msg.sender] += msg.value
                totalSupply += msg.value
            else:
                call msg.sender with:
                   value msg.value - limit wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[ceil32(arg1.length) + 128] = address(msg.sender)
                balanceOf[msg.sender] += limit
                totalSupply += limit
    else:
        require msg.value >= fee
        balanceOf[stor0] += fee
        if limit <= 0:
            mem[ceil32(arg1.length) + 128] = address(msg.sender)
            balanceOf[msg.sender] = msg.value - fee + balanceOf[msg.sender]
            totalSupply = msg.value - fee + totalSupply
        else:
            if msg.value - fee <= limit:
                mem[ceil32(arg1.length) + 128] = address(msg.sender)
                balanceOf[msg.sender] = msg.value - fee + balanceOf[msg.sender]
                totalSupply = msg.value - fee + totalSupply
            else:
                call msg.sender with:
                   value msg.value - fee - limit wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[ceil32(arg1.length) + 128] = address(msg.sender)
                balanceOf[msg.sender] += limit
                totalSupply += limit
    emit ActivationRequest(msg.sender, mem[128]);
}



}
