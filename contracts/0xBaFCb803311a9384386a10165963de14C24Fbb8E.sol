contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage58' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5[0x408a302b84c5747fb668234f6ca6d3c63f305611] = 10^15
    return code.data[494 len 6745]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_40cc65b0;
array of struct sub_1679a15c;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_1679a15c(?) {
    require arg1 < sub_1679a15c.length
    return sub_1679a15c[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_40cc65b0(?) {
    require arg1 < sub_40cc65b0.length
    return sub_40cc65b0[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xef92befe9c7bff20d234ce8dcf3754e80dbb2e59
    mem[128] = 0xee2693fa9fb1c1f67e57b1bd8a856dedd2c58612
    mem[160] = 0x6c39700715df9b78113f95094efc30c808999082
    mem[192] = 0x922848e699417844740526541514224eee5c42c8
    mem[224] = 0x66a8347c30333f262308c9be2a4fa71d92e08529
    mem[256] = 0x56f68e4ebe8151537e1daa23da01a7f8f14e3ffd
    mem[288] = 0x55fe67ebc723e2d8b7205401b54df4d3a5045ec8
    mem[320] = 0x91ecd9561f9da6c13eb623010249d9ed14034b2a
    mem[352] = 0xca2c1822919cd6764915a38784e0e3c3086a5484
    mem[384] = 0xa1139733808add510b49edf71b761f1a20fcf364
    mem[416] = 0x1dbb9b2d30ca045a57741be670e0308217207abe
    mem[448] = 0x15414bcbd2ad6175979ec7d23d541850b0ab7ca9
    mem[480] = 0x968c92682d9d200d67fbe38715e2ea2da29f85b2
    mem[512] = 0x1390c293462c202672844402016fc748a3891af4
    mem[544] = 0xa320b99de3a41f166f703f240278d8908bedf29b
    mem[576] = 0x94f41bbc94b3dc2d6d6a5507fe9bf8a2f2e506ef
    mem[608] = 0x5cd6281c0f16a0a49a74b51fb5763a116d3924d6
    mem[640] = 0x333c310d4f78a1d36a85ea7d73a7c60474ef65fa
    mem[672] = 0xd6df806c3a1d073221dd0fd3bd84ccfeea0dcf21
    mem[704] = 0xad4166e360ad1fb95c0559f3a58220dffcdd63ff
    mem[736] = 0xde354522ec304a68a21b5b161ab61ee625df053a
    mem[768] = 0x5860729fc674d95b225c91d2deaf7264ac5633b5
    mem[800] = 0xa6ab9c37b48af05befe13c1cea33125e359099
    mem[832] = 0x213ae9b6648982304587d88ef0078b6fdc6e850e
    mem[864] = 0x4e4ecdce7cab454b0803816baaa1afa389d528e9
    mem[896] = 0x7b16e7721f9d76907886f71058523e027543cd26
    mem[928] = 0x7031bae1946baa981a5d8969d13ca428babd7201
    mem[960] = 0x41841c1898c1b0a25636e4c34fb83c351976cb75
    mem[992] = 0xf1b6173978e5bd06c8c74b3daa4d1446f7c28020
    mem[1024] = 0xbd3aa804155657f13b4c8d2d49b070fa5b841413
    mem[1056] = 0x2804fc87915252ea39d5e9c6e770c069eb94968a
    mem[1088] = 0x8b033916fd1949ae0b218f0bc9c366bbcec5bff
    mem[1120] = 0x2a7878d6a01457e20529c1a64bf28486c7059cad
    mem[1152] = 0x6a3640ab31a0d57685a698e90911572305926da5
    mem[1184] = 0x2eb50bc9ad259b0a30906da6bfd26060e46f172c
    mem[1216] = 0x603892a1e97a0a9a0f60c2ae1e07c3c7c17136d1
    mem[1248] = 0xba2a218a1d64e9d3522e7abe4c3881f2ac917990
    mem[1280] = 0x25903da3eb201bce2b41b8afe190db1d9dd3cb6e
    sub_1679a15c.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_1679a15c[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_1679a15c.length > idx:
        sub_1679a15c[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x671df54a23f61e6ab52c85cc2aa24e155ec41dcb
    mem[1344] = 0x1f4eae3a3cd1d6071de48076d22fa11becb2cbc0
    mem[1376] = 0x21b11a69a772ac574555a01cd182885b83bd60cd
    mem[1408] = 0xfe8341525e1619c7ceeec40065d4ffd83cd4305
    mem[1440] = 0x7cd79b9056398b058a5b22a96f3aefb75b253afe
    mem[1472] = 0xae5dac2149ec7f1cc0b3b56c352e47d425f14079
    mem[1504] = 0x677fa276d1beeb8738fba79debce4302fa9e267f
    mem[1536] = 0x55ede716720be3ff0742f620066d5fa658c3a86e
    mem[1568] = 0x5f693810cd8d734210c264ec825cf7e3505ca2ed
    mem[1600] = 0x36cca30d0888f05dbecf7ed8ef7297a4a609ea0c
    mem[1632] = 0x5d41a7dbadddd7f8119774dffe2da69010dbf4d4
    mem[1664] = 0xae79f7da7104101436942603f7daf7fbaca98a5d
    mem[1696] = 0x153182fc23dfd539f2bc88be6c646d9d518c99ab
    mem[1728] = 0xf1ad946ae30a285d96ea396acd3fd22c5aa75ef8
    mem[1760] = 0xb72c0d2fa80917bcc188df9afc9eb772af25c766
    mem[1792] = 0x349ec97f32e22aa26da089d58c03de6616d605c0
    mem[1824] = 0xa27435a8ded40c5e4b16941cd76064644618320e
    mem[1856] = 0x1f18105429f53bcb4333c8ec325765dbfc340454
    mem[1888] = 0x24c7faa945158788f6af0d0e7f305405df90ea27
    mem[1920] = 0x3b612083e633e51cb777a529a81e50666f1c34ce
    mem[1952] = 0xb730aa067760002e727d99e621fdc4c0118ed117
    mem[1984] = 0x94e4b5012d24a52df5eb829a4793d8bde3d5ede8
    mem[2016] = 0xc851cd4fd42bcb1172819c09f60ed95fe96e70
    mem[2048] = 0x66b316db774812eeb5601915b2c21954d49027e6
    mem[2080] = 0x6233a2fd2483723d7b3f842df385b0d5c2516b90
    mem[2112] = 0x2312429b31d49f16286a0394fa11fdcf7db3236e
    mem[2144] = 0x59f63eee0f029543b9120be87b730ff9e4c07e24
    mem[2176] = 0x70eae66d0a08f05bfe2ef8eb1777bc287e1516fb
    mem[2208] = 0xd9351c87d0f3d5300c6a232c04a2f9b8d3f73443
    mem[2240] = 0x21d9003ca06133bfef2d9b05e0dd9029e8d43dee
    mem[2272] = 0xa55a2e317469f4c7b9e246df2ac3363cac29050a
    mem[2304] = 0xe857f1163cb5e4b9e2cbd9caff8414dbad625eac
    mem[2336] = 0xe1ae329cbd40daccce249dc84de33a74f26afed8
    mem[2368] = 0xa769d88d65612c7563c7db46d7cd7268e5e64ed1
    mem[2400] = 0x20184b204341336c63358ed81ef27cf1f67c181a
    mem[2432] = 0x85475b3b13d8e18377c69ed4ed86794b4031f920
    mem[2464] = 0xf7be71109a0649d03606dd3fbb9470fa6287daf
    mem[2496] = 0xbfd5f4bea9e03a16332c77081ec2ee915e79b061
    sub_40cc65b0.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_40cc65b0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_40cc65b0.length > idx:
        sub_40cc65b0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_40cc65b0.length:
        if not sub_1679a15c.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_40cc65b0.length, sub_1679a15c.length
        else:
            mem[2660] = address(sub_1679a15c.field_0)
            idx = 2660
            s = 0
            while (32 * sub_1679a15c.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1679a15c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_40cc65b0.length, sub_1679a15c.length, mem[2660 len 32 * sub_1679a15c.length]
    else:
        mem[2628] = address(sub_40cc65b0.field_0)
        idx = 2628
        s = 0
        while (32 * sub_40cc65b0.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_40cc65b0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_40cc65b0.length) + 2628] = sub_1679a15c.length
        if not sub_1679a15c.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_40cc65b0.length, data=mem[2628 len (32 * sub_40cc65b0.length) + 32]), (32 * sub_40cc65b0.length) + 96
        else:
            mem[(32 * sub_40cc65b0.length) + 2660] = address(sub_1679a15c.field_0)
            idx = (32 * sub_40cc65b0.length) + 2660
            s = 0
            while (32 * sub_40cc65b0.length) + (32 * sub_1679a15c.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_1679a15c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_40cc65b0.length, data=mem[2628 len (32 * sub_40cc65b0.length) + (32 * sub_1679a15c.length) + 32]), (32 * sub_40cc65b0.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
