.class Lcom/baidu/mapapi/map/r;
.super Ljava/lang/Object;
.source "BaiduMap.java"

# interfaces
.implements Lcom/baidu/platform/comapi/bmsdk/d;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BaiduMap;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V
    .locals 6

    .line 1619
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmArc;

    if-eqz v0, :cond_0

    .line 1620
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmArc;

    .line 1621
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->F(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnArcClickListener;

    .line 1622
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a()Lcom/baidu/mapapi/map/Arc;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnArcClickListener;->onArcClick(Lcom/baidu/mapapi/map/Arc;)Z

    goto :goto_0

    .line 1624
    :cond_0
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    if-eqz v0, :cond_1

    .line 1625
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    .line 1626
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;

    .line 1627
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a()Lcom/baidu/mapapi/map/Polyline;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;->onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z

    goto :goto_1

    .line 1629
    :cond_1
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz v0, :cond_2

    .line 1630
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    .line 1631
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a()Lcom/baidu/mapapi/map/Circle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->d()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->k:I

    .line 1632
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnCircleClickListener;

    .line 1633
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a()Lcom/baidu/mapapi/map/Circle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnCircleClickListener;->onCircleClick(Lcom/baidu/mapapi/map/Circle;)Z

    goto :goto_2

    .line 1635
    :cond_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    if-eqz v0, :cond_3

    .line 1636
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    .line 1638
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a()Lcom/baidu/mapapi/map/Polygon;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->d()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/baidu/mapapi/map/Polygon;->q:I

    .line 1640
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->B(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnPolygonClickListener;

    .line 1641
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a()Lcom/baidu/mapapi/map/Polygon;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnPolygonClickListener;->onPolygonClick(Lcom/baidu/mapapi/map/Polygon;)Z

    goto :goto_3

    .line 1643
    :cond_3
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;

    if-eqz v0, :cond_7

    .line 1644
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;

    .line 1645
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1646
    iget-object v1, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->x(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1647
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1648
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1649
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1650
    iget-object p1, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->x(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz p1, :cond_c

    .line 1651
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    if-eqz v0, :cond_c

    .line 1652
    iget-object p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    invoke-interface {p1}, Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;->onInfoWindowClick()V

    goto/16 :goto_9

    .line 1658
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->y(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;

    .line 1659
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->a()Lcom/baidu/mapapi/map/Marker;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;->onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z

    goto :goto_4

    .line 1662
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->P(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;

    .line 1663
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->a()Lcom/baidu/mapapi/map/Marker;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;->onMarkerClick(Lcom/baidu/mapapi/map/Marker;)V

    goto :goto_5

    .line 1667
    :cond_7
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz v0, :cond_8

    .line 1668
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    .line 1669
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->E(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnTextClickListener;

    .line 1670
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a()Lcom/baidu/mapapi/map/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnTextClickListener;->onTextClick(Lcom/baidu/mapapi/map/Text;)Z

    goto :goto_6

    .line 1672
    :cond_8
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz v0, :cond_9

    .line 1673
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmGround;

    .line 1674
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->D(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnGroundOverlayClickListener;

    .line 1675
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a()Lcom/baidu/mapapi/map/GroundOverlay;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap$OnGroundOverlayClickListener;->onGroundOverlayClick(Lcom/baidu/mapapi/map/GroundOverlay;)Z

    goto :goto_7

    .line 1677
    :cond_9
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz v0, :cond_a

    .line 1678
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    goto :goto_9

    .line 1679
    :cond_a
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz v0, :cond_c

    .line 1680
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    .line 1681
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a()I

    move-result v0

    .line 1682
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->c()Lcom/baidu/mapapi/map/MultiPoint;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 1686
    :cond_b
    iget-object v2, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v2}, Lcom/baidu/mapapi/map/BaiduMap;->A(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;

    .line 1687
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->c()Lcom/baidu/mapapi/map/MultiPoint;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MultiPoint;->getMultiPointItem(I)Lcom/baidu/mapapi/map/MultiPointItem;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;->onMultiPointClick(Lcom/baidu/mapapi/map/MultiPoint;Lcom/baidu/mapapi/map/MultiPointItem;)Z

    goto :goto_8

    :cond_c
    :goto_9
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)V
    .locals 4

    .line 1695
    instance-of v0, p1, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;

    if-eqz v0, :cond_1

    .line 1696
    check-cast p1, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;

    .line 1697
    iget-object v0, p0, Lcom/baidu/mapapi/map/r;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->P(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;

    .line 1698
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->a()Lcom/baidu/mapapi/map/Marker;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;->a()Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1699
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->a()Lcom/baidu/mapapi/map/Marker;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;->a()Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;->onMarkerClick(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V

    goto :goto_0

    .line 1702
    :cond_1
    instance-of p1, p1, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    :cond_2
    return-void
.end method
