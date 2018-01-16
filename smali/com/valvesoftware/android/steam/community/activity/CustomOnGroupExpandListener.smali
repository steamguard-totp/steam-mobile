.class Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# static fields
.field private static prevExpandedGroup:I


# instance fields
.field private final expandableListView:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 842
    const/4 v0, -0x1

    sput v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0
    .param p1, "expandableListView"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    .line 840
    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 845
    sget v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    if-eq v0, p1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->expandableListView:Landroid/widget/ExpandableListView;

    sget v1, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 850
    :cond_0
    sput p1, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;->prevExpandedGroup:I

    .line 851
    return-void
.end method
