contract main {




// =====================  Runtime code  =====================


address owner;
address sub_0b32ca72Address;
address escrowAddress;
array of struct posts;
mapping of uint256 checkContribution;
uint256 numPosts;
uint8 stor7;
uint256 cancelFee;
uint256 sub_70492cbf;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;

function active() {
    return bool(stor7)
}

function posts(uint256 arg1) {
    require arg1 < posts.length
    require uint8(posts[arg1].field_416) <= 3
    return uint256(posts[arg1].field_0), 
           address(posts[arg1].field_256),
           uint8(posts[arg1].field_256),
           uint256(posts[arg1].field_512),
           uint256(posts[arg1].field_768),
           uint256(posts[arg1].field_1024),
           uint256(posts[arg1].field_1280)
}

function sub_0b32ca72(?) {
    return sub_0b32ca72Address
}

function cancelFee() {
    return cancelFee
}

function checkContribution(uint256 arg1) {
    return checkContribution[msg.sender][arg1]
}

function sub_70492cbf(?) {
    return sub_70492cbf
}

function owner() {
    return owner
}

function escrow() {
    return escrowAddress
}

function numPosts() {
    return numPosts
}

function _fallback() payable {
    revert
}

function setActive(bool arg1) {
    require msg.sender == owner
    stor7 = uint8(arg1)
}

function setCancelFee(uint256 arg1) {
    require msg.sender == owner
    cancelFee = arg1
}

function setCloseFee(uint256 arg1) {
    require msg.sender == owner
    sub_70492cbf = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setEscrow(address arg1) {
    require msg.sender == owner
    escrowAddress = arg1
    emit EscrowUpdated(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getNumCandidates(uint256 arg1) {
    require arg1 < posts.length
    require 1 <= uint256(posts[arg1].field_1536)
    return (uint256(posts[arg1].field_1536) - 1)
}

function getId(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 4
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function extractProfits(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require ext_code.size(sub_0b32ca72Address)
    call sub_0b32ca72Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_0b32ca72Address)
    call sub_0b32ca72Address.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit ProfitsExtracted(arg2);
}

function getRefund(uint256 arg1) {
    require arg1 < posts.length
    require uint8(posts[arg1].field_416) <= 3
    require uint8(posts[arg1].field_416) == 3
    require checkContribution[msg.sender][arg1] > 0
    require ext_code.size(escrowAddress)
    call escrowAddress.0x283760fa with:
         gas gas_remaining wei
        args msg.sender, checkContribution[msg.sender][arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < posts.length
    require checkContribution[msg.sender][arg1] <= uint256(posts[arg1].field_1024)
    require arg1 < posts.length
    uint256(posts[arg1].field_1024) -= checkContribution[msg.sender][arg1]
    checkContribution[msg.sender][arg1] = 0
    emit GetRefund(0);
}

function getCandidateId(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require arg2 < posts.length
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = (8 * arg2) + sha3(3) + 7
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getRecommenders(uint256 arg1) {
    require arg1 < posts.length
    if not uint256(posts[arg1].field_1536):
        mem[(32 * uint256(posts[arg1].field_1536)) + 128] = 32
        mem[(32 * uint256(posts[arg1].field_1536)) + 160] = uint256(posts[arg1].field_1536)
        mem[(32 * uint256(posts[arg1].field_1536)) + 192 len floor32(uint256(posts[arg1].field_1536))] = mem[128 len floor32(uint256(posts[arg1].field_1536))]
        return memory
          from (32 * uint256(posts[arg1].field_1536)) + 128
           len (96 * uint256(posts[arg1].field_1536)) + 64
    mem[128] = address(stor[sha3((8 * arg1) + ('name', 'posts', 3) + 6)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(posts[arg1].field_1536)) + 96 > idx:
        mem[idx + 32] = address(stor[s + sha3((8 * arg1) + ('name', 'posts', 3) + 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(posts[arg1].field_1536)) + 192 len floor32(uint256(posts[arg1].field_1536))] = mem[128 len floor32(uint256(posts[arg1].field_1536))]
    return Array(len=uint256(posts[arg1].field_1536), data=mem[128 len floor32(uint256(posts[arg1].field_1536))], mem[(32 * uint256(posts[arg1].field_1536)) + floor32(uint256(posts[arg1].field_1536)) + 192 len (32 * uint256(posts[arg1].field_1536)) - floor32(uint256(posts[arg1].field_1536))]), 
}

function cancelPost(uint256 arg1) {
    require arg1 < posts.length
    require address(posts[arg1].field_256) == msg.sender
    require arg1 < posts.length
    require uint8(posts[arg1].field_416) <= 3
    require uint8(posts[arg1].field_416) == 1
    require arg1 < posts.length
    if not uint256(posts[arg1].field_512):
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg1 < posts.length
        require 0 <= uint256(posts[arg1].field_512)
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args msg.sender, uint256(posts[arg1].field_512)
    else:
        require cancelFee * uint256(posts[arg1].field_512) / uint256(posts[arg1].field_512) == cancelFee
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args this.address, cancelFee * uint256(posts[arg1].field_512) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg1 < posts.length
        require cancelFee * uint256(posts[arg1].field_512) / 100 <= uint256(posts[arg1].field_512)
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args msg.sender, uint256(posts[arg1].field_512) - (cancelFee * uint256(posts[arg1].field_512) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < posts.length
    uint8(posts[arg1].field_416) = 3
    emit 0xb4103c36: 3
}

function closePost(uint256 arg1, uint256 arg2) {
    require arg1 < posts.length
    require address(posts[arg1].field_256) == msg.sender
    require arg1 < posts.length
    require uint8(posts[arg1].field_416) <= 3
    require uint8(posts[arg1].field_416) == 1
    require arg1 < posts.length
    require arg2 < uint256(posts[arg1].field_1536)
    require arg1 < posts.length
    require arg2 < uint256(posts[arg1].field_1536)
    require address(stor[sha3((8 * arg1) + ('name', 'posts', 3) + 6) + arg2].field_0) != msg.sender
    if not uint256(posts[arg1].field_1024):
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 < uint256(posts[arg1].field_1536)
        require 0 <= uint256(posts[arg1].field_1024)
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args address(stor[sha3((8 * arg1) + ('name', 'posts', 3) + 6) + arg2].field_0), uint256(posts[arg1].field_1024)
    else:
        require sub_70492cbf * uint256(posts[arg1].field_1024) / uint256(posts[arg1].field_1024) == sub_70492cbf
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args this.address, sub_70492cbf * uint256(posts[arg1].field_1024) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 < uint256(posts[arg1].field_1536)
        require sub_70492cbf * uint256(posts[arg1].field_1024) / 100 <= uint256(posts[arg1].field_1024)
        require ext_code.size(escrowAddress)
        call escrowAddress.0x283760fa with:
             gas gas_remaining wei
            args address(stor[sha3((8 * arg1) + ('name', 'posts', 3) + 6) + arg2].field_0), uint256(posts[arg1].field_1024) - (sub_70492cbf * uint256(posts[arg1].field_1024) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint256(posts[arg1].field_1280) = arg2
    uint8(posts[arg1].field_416) = 2
    emit 0xb4103c36: 2
}

function recommend(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require arg2 <= numPosts
    require arg2 < posts.length
    require uint8(posts[arg2].field_416) <= 3
    require uint8(posts[arg2].field_416) == 1
    require arg2 < posts.length
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = (8 * arg2) + sha3(3) + 7
    require not uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    require arg2 < posts.length
    require ext_code.size(sub_0b32ca72Address)
    call sub_0b32ca72Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args escrowAddress, uint256(posts[arg2].field_768)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < posts.length
    mem[ceil32(arg1.length) + 132] = msg.sender
    mem[ceil32(arg1.length) + 164] = uint256(posts[arg2].field_768)
    require ext_code.size(escrowAddress)
    call escrowAddress.0x9e88fd81 with:
         gas gas_remaining wei
        args msg.sender, uint256(posts[arg2].field_768)
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < posts.length
    uint256(posts[arg2].field_1536)++
    uint256(stor[sha3((8 * arg2) + ('name', 'posts', 3) + 6) + uint256(posts[arg2].field_1536)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg2) + ('name', 'posts', 3) + 6) + uint256(posts[arg2].field_1536)].field_0))
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = (8 * arg2) + sha3(3) + 7
    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(posts[arg2].field_1536)
    require arg2 < posts.length
    require uint256(posts[arg2].field_768) + uint256(posts[arg2].field_1024) >= uint256(posts[arg2].field_1024)
    require arg2 < posts.length
    uint256(posts[arg2].field_1024) += uint256(posts[arg2].field_768)
    require uint256(posts[arg2].field_768) + checkContribution[msg.sender][arg2] >= checkContribution[msg.sender][arg2]
    checkContribution[msg.sender][arg2] += uint256(posts[arg2].field_768)
    emit CandidateRecommended(uint256(posts[arg2].field_1536));
}

function addPost(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 320] = 0
    mem[ceil32(arg1.length) + 352] = 96
    require stor7
    require arg2 > 0
    mem[ceil32(arg1.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 384] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 384] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 384] = 4
    require not uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 384 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    mem[ceil32(arg1.length) + 388] = msg.sender
    mem[ceil32(arg1.length) + 420] = arg2
    require ext_code.size(escrowAddress)
    call escrowAddress.0x9e88fd81 with:
         gas gas_remaining wei
        args msg.sender, arg2
    mem[ceil32(arg1.length) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = numPosts
    mem[ceil32(arg1.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + 192] = 1
    mem[ceil32(arg1.length) + 224] = arg2
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 288] = arg2
    posts.length++
    uint256(posts[posts.length].field_0) = numPosts
    address(storC257[stor3.length].field_0) = msg.sender
    address(storC257[stor3.length].field_0) = msg.sender
    uint8(storC257[stor3.length].field_160) = 1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = arg3
    storC257[stor3.length] = arg2
    storC257[stor3.length] = 0
    storC257[stor3.length] = arg1.length
    if not arg1.length:
        idx = 0
        while storC257[stor3.length] > idx:
            address(stor[idx + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079f)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor[s + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079f)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while storC257[stor3.length] > idx:
            address(stor[idx + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079f)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 384] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 384] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 384] = 4
    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 384 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = numPosts
    require numPosts < posts.length
    uint256(posts[stor6].field_1536)++
    address(stor[sha3((8 * stor6) + ('name', 'posts', 3) + 6) + uint256(posts[stor6].field_1536)].field_0) = 0
    require numPosts + 1 >= numPosts
    numPosts++
    emit PostCreated(numPosts);
}



}
